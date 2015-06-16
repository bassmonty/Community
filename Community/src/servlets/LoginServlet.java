package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import manager.UsersManager;

import domain.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet", "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/MyDB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request,
				response);

		String url = "/WEB-INF/login.jsp";

		String action = request.getParameter("action");

		if (action == null) {
			url = "/WEB-INF/login.jsp";
		}

		if (("login").equalsIgnoreCase(action)) {

			String userName = request.getParameter("userName");
			String password = request.getParameter("password");

			User theFoundUser = null;
			theFoundUser = new UsersManager(ds)
					.findUserWithUsernameAndPassword(userName, password);

			// If we find the user set the user on the request and forward to
			// the
			// main page
			// otherwise send them back to the login page
			if (theFoundUser != null) {
				request.setAttribute("user", theFoundUser);

				HttpSession session = request.getSession();
				session.setAttribute("isLoggedIn", true);

				url = "/WEB-INF/main.jsp";
			} else {
				url = "/WEB-INF/login.jsp";
			}
		}

		getServletContext().getRequestDispatcher(url)
				.forward(request, response);

		try {
			Connection conn = ds.getConnection();
			PreparedStatement theQuery = conn
					.prepareStatement("SELECT * FROM COMMUNITY_USER");
			ResultSet rs = theQuery.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("ID"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// String url = "/index.jsp";

		// String url = "/Community/login.jsp";

		getServletContext().getRequestDispatcher(url)
				.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("login")) {
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");

			User theFoundUser = null;
			theFoundUser = new UsersManager(ds)
					.findUserWithUsernameAndPassword(userName, password);

			if (userName.isEmpty() || userName.equals(null) || password.isEmpty() || password.equals(null)) {
				System.out.println("user or password is empty or null");
				request.setAttribute("error",
						"Please submit both Username and Password");
				request.getRequestDispatcher("/WEB-INF/login.jsp").forward(
						request, response);
			} else {
				// Check to see if user is ADMIN
				if (userName.matches("ADMIN")) {
					System.out.println("User is admin");
					// Put boolean in session
					request.getSession().setAttribute("isLoggedIn", true);
					request.getSession().setAttribute("userName", userName);
					request.getSession().setAttribute("password", password);
					response.sendRedirect("/Admin");
				} else {
					// Check to see if user can login
					if (theFoundUser != null) {
						// Put boolean in session
						System.out.println("User exists and is not null");
						request.setAttribute("user", theFoundUser);

						request.getSession().setAttribute("isLoggedIn", true);
						request.getSession().setAttribute("userName", userName);
						request.setAttribute("userName", userName);
						response.sendRedirect("/WEB-INF/main.jsp");

					} else {
						System.out.println("Incorrect Username/Password");
						request.setAttribute("error",
								"Incorrect Username/Password. Please try again.");
						request.getSession().setAttribute("isLoggedIn", false);
						response.sendRedirect("/Community/login");
								
					}
				}
			}
		}
	}
}
