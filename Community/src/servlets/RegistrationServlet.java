package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import domain.Community;
import domain.User;
import manager.CommunitiesManager;
import manager.UsersManager;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet({ "/RegistrationServlet", "/registration" })
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/MyDB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

        List<Community> communities = null;
        CommunitiesManager cm = new CommunitiesManager(ds);
		try{
			System.out.println("!ds=" + ds);
			communities = cm.getCommunities();
		}catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("communities", communities);
		request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String url = "/WEB-INF/register.jsp";

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String verify_password = request.getParameter("verify_password");
		int community_ID = new Integer(request.getParameter("community"));

		if (!password.equals(verify_password)) {
			request.setAttribute("error",
					"Passwords did not match. Please Try again!");
			url = "/WEB-INF/register.jsp";
			getServletContext().getRequestDispatcher(url).forward(request,
					response);
			return;

		} else {

			User newUser = new User(name, userName, password, email,
					community_ID);
			UsersManager um = new UsersManager(ds);

			if (um.addUser(newUser)) {

//				request.getSession().setAttribute("isLoggedIn", true);
//				// request.getSession().setAttribute("user_id",
//				// newUser.getID());
//				request.getSession()
//						.setAttribute("name", newUser.getName());
//				request.getSession().setAttribute("userName",
//						newUser.getUserName());
//				request.getSession().setAttribute("email",
//						newUser.getEmail());
//				//request.getSession().setAttribute("community",newUser.getCommunity_ID());
//				// request.setAttribute("user_id", newUser.get);
//				request.setAttribute("id", newUser.getID());
//				request.setAttribute("name", newUser.getName());
//				request.setAttribute("email", newUser.getEmail());
//				request.setAttribute("userName", newUser.getUserName());
				response.sendRedirect("/Community/login");
						
			} else {
				request.setAttribute("error_username",
						"sorry already have the same username. Try with different name.");
				getServletContext().getRequestDispatcher(url).forward(
						request, response);
				return;
			}

		}
		
	}
}

// String action = request.getParameter("action");
//
// if (action == null) {
// url = "/WEB-INF/register.jsp";
// }
//
// if (action.equalsIgnoreCase("register")) {
//
// String name = request.getParameter("name");
// String email = request.getParameter("email");
// String userName = request.getParameter("userName");
// String password = request.getParameter("password");
// String community = request.getParameter("community");
//
// if (userName != null) {
// request.setAttribute("name", name);
// request.setAttribute("email", email);
// request.setAttribute("userName", userName);
// request.setAttribute("password", password);
// request.setAttribute("community", community);
//
// HttpSession session = request.getSession();
// session.setAttribute("isRegistered", true);
//
//
// url = "/WEB-INF/viewProfile.jsp";
// } else {
// url = "/register.jsp";
// }