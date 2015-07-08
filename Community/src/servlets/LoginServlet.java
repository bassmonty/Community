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

@WebServlet({ "/LoginServlet", "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/MyDB")
	DataSource ds;

	public LoginServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request,
				 response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String url = "/WEB-INF/login.jsp";
		User theFoundUser = null;
		String action = request.getParameter("action");

		if (action == null) {
			url = "/WEB-INF/login.jsp";
		}

		if (("login").equalsIgnoreCase(action)) {

			String userName = request.getParameter("userName");
			String password = request.getParameter("password");

			theFoundUser = new UsersManager(ds)
					.findUserWithUsernameAndPassword(userName, password);

			// If we find the user set the user on the request and forward to
			// the main page
			// otherwise send them back to the login page
			if (theFoundUser != null) {
				request.setAttribute("user", theFoundUser);

				HttpSession session = request.getSession();
				session.setAttribute("isLoggedIn", true);
				session.setAttribute("userName", userName);
				session.setAttribute("userID", theFoundUser.getID());
//				url = "/Community/viewProfile";
				url = "/WEB-INF/viewProfile.jsp";
				// response.sendRedirect("/Community/main");
			} else {
				request.setAttribute("error_username",
						"username or password didn't match with database");
				url = "/WEB-INF/login.jsp";
			}
		}

		getServletContext().getRequestDispatcher(url)
				.forward(request, response);

	}
}
