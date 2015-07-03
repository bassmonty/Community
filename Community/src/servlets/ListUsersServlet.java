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
import manager.UsersManager;
import domain.Comments;
import domain.User;

/**
 * Servlet implementation class ListResidentsServlet
 */
@WebServlet({ "/ListUsersServlet", "/listUsers", "/listResidents" })
public class ListUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name = "jdbc/MyDB")
	DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<User> usersList = null;
		UsersManager um = new UsersManager(ds);
		 
		String url = "/WEB-INF/index.jsp";
		try {	
			usersList = um.getUsers();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			//url = "/WEB-INF/index.jsp";
		}
		request.setAttribute("listOfUsers", usersList);
		url = "/WEB-INF/listUsers.jsp";
		System.out.println(usersList);
		
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
