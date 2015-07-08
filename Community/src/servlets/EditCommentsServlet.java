package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import manager.CommentsManager;
import domain.Comments;

/**
 * Servlet implementation class EditCommentsServlet
 */
@WebServlet({ "/EditCommentsServlet", "/editComments" })
public class EditCommentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/MyDB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditCommentsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Comments commentToEdit = null;

		int id = new Integer(request.getParameter("id"));
		
		CommentsManager cm = new CommentsManager(ds);
		System.out.println("comment id is:" + id);
		try {
			commentToEdit = cm.getCommentByID(id);
			// System.out.println(bookToEdit.getClass());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println("Comment to Edit is: " + commentToEdit);

		if (commentToEdit != null) {
			request.setAttribute("comment", commentToEdit);
			getServletContext().getRequestDispatcher("/WEB-INF/editComment.jsp")
			.forward(request, response);
		} else {
			response.sendRedirect("/Community/listComments");
		}

	}

	// String url = "/WEB-INF/index.jsp";
	//
	// CommentsManager cm = new CommentsManager(ds);
	// Comments comment = null;
	// int ID = new Integer(request.getParameter("ID"));
	//
	// try {
	// comment = cm.getCommentByID(ID);
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// // url = "/WEB-INF/index.jsp";
	// }
	// if (comment != null) {
	// request.setAttribute("comment", comment);
	// url = "/WEB-INF/editComment.jsp";
	// }
	//
	// request.getRequestDispatcher(url).forward(request, response);

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		boolean updateSuccedded = false;
		HttpSession session = request.getSession();

		int id = new Integer(request.getParameter("id"));
		String commentTopic = request.getParameter("commentTopic");
		String commentContent = request.getParameter("commentContent");
		
		int user_id = (Integer) session.getAttribute("userID");

		Comments updatedComment = new Comments(id, user_id, null,
				commentTopic, commentContent);
		CommentsManager bm = new CommentsManager(ds);

		try {
			updateSuccedded = bm.updateComment(updatedComment);
			System.out.println(updateSuccedded);

		} catch (SQLException e) {
			e.printStackTrace();
			return;
		}

		if (updateSuccedded != true) {			
			response.sendRedirect("/Community/editComments?id=" + id);
		} else {
     		response.sendRedirect("/Community/listComments");
		}

	}
}
