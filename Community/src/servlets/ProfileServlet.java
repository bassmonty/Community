package servlets;

import java.io.IOException;
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
import manager.UsersManager;
import domain.Comments;
import domain.User;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet({ "/ProfileServlet", "/profile", "/viewProfile" })
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/MyDB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		getServletContext().getRequestDispatcher("/WEB-INF/viewProfile.jsp").forward(request, response);
		return;

//		HttpSession session = request.getSession();
//
//		User theUser = null;
//		UsersManager um = new UsersManager(ds);
//		int theUserID = (Integer) session.getAttribute("ID");
//
//		String url = "/WEB-INF/index.jsp";
//		try {
//			theUser = um.findUserWithID(theUserID);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			// url = "/WEB-INF/index.jsp";
//		}
//		request.setAttribute("theUser", theUser);
//		url = "/WEB-INF/viewProfile.jsp";
//		System.out.println(theUser);
//		
//		request.getRequestDispatcher(url).forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		User theFoundUser = new UsersManager(ds)
				.findUserWithUsernameAndPassword(userName, password);

		String url = "/Community/LoginServlet";

		// If we find the user set the user on the request and forward to
		// the main page
		// otherwise send them back to the login page
		if (theFoundUser != null) {
			request.setAttribute("user", theFoundUser);

			HttpSession session = request.getSession();
			session.setAttribute("isLoggedIn", true);
			request.getSession().setAttribute("userName", userName);
			request.getSession().setAttribute("userID", theFoundUser.getID());
			url = "/WEB-INF/viewProfile.jsp";
		}
		getServletContext().getRequestDispatcher(url)
				.forward(request, response);
	}
}
