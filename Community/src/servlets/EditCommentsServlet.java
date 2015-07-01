package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import manager.CommentsManager;
import domain.Comments;

/**
 * Servlet implementation class EditCommentsServlet
 */
@WebServlet({ "/EditCommentsServlet", "/editComments" })
public class EditCommentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Resource (name = "jdbc/MyDB")
	DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditCommentsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/WEB-INF/index.jsp";
		
		CommentsManager cm = new CommentsManager(ds);
		Comments comment = null;
		int ID = new Integer(request.getParameter("ID"));
		
		try {	
			comment = cm.getCommentByID(ID);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			//url = "/WEB-INF/index.jsp";
		}
		if (comment != null){
			request.setAttribute("comment", comment);
			url = "/WEB-INF/editComment.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
