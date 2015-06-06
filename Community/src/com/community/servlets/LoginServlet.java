package com.community.servlets;

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

import com.community.database.DBManager;
import com.community.domain.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet", "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/DB")
	DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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

		String url = "/index.jsp";

		
//		String url = "/Community/login.jsp";

		getServletContext().getRequestDispatcher(url)
				.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//			String url = "/WEB-INF/login.jsp";
			
			String url = "/WEB-INF/main.jsp";

			String action = request.getParameter("action");

			if (action == null) {
				url = "/Community/login.jsp";
			}

			if (action.equalsIgnoreCase("login")) {

				String userName = request.getParameter("userName");
				String name = request.getParameter("name");
				String password = request.getParameter("password");

				User theFoundUser = DBManager.sharedInstance()
						.findUserWithUsernameAndPassword(userName, password);

				// If we find the user set the user on the request and forward to the
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
		}
	}


