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
 * Servlet implementation class commentsServlet
 */
@WebServlet({ "/commentsServlet", "/comments", "/listComments" })
public class ListCommentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name = "jdbc/MyDB")
	DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListCommentsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Comments> commentsList = null;
		CommentsManager cm = new CommentsManager(ds);
		 
		String url = "/WEB-INF/index.jsp";
		String id = request.getParameter("id");
		
		
		try {	
			if(id==null){
				commentsList = cm.getComments();
			}else{
				commentsList = cm.getCommentsByUserId(Integer.parseInt(id));	
				 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			//url = "/WEB-INF/index.jsp";
		}
		
		
		request.setAttribute("listOfComments", commentsList);
		url = "/WEB-INF/listComments.jsp";
		System.out.println(commentsList);
		request.getRequestDispatcher(url).forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
