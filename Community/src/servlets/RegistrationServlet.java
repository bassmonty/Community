package servlets;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet({ "/RegistrationServlet", "/registration" })
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/DB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String url = "/Community/viewProfile";

		String action = request.getParameter("action");

		if (action == null) {
			url = "/WEB-INF/register.jsp";
		}

		if (action.equalsIgnoreCase("register")) {

			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			String community = request.getParameter("community");
			
			if (userName != null) {
				request.setAttribute("name", name);
				request.setAttribute("email", email);
				request.setAttribute("userName", userName);
				request.setAttribute("password", password);
				request.setAttribute("community", community);

				HttpSession session = request.getSession();
				session.setAttribute("isRegistered", true);
				

				url = "/WEB-INF/viewProfile.jsp";
			} else {
				url = "/register.jsp";
			}

		}
		getServletContext().getRequestDispatcher(url)
		.forward(request, response);
	}
}
