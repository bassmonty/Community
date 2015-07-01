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
import manager.CommunitiesManager;
import domain.Comments;
import domain.Community;

/**
 * Servlet implementation class ListCommunitiesServlet
 */
@WebServlet({ "/ListCommunitiesServlet", "/listCommunities" })
public class ListCommunitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/MyDB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListCommunitiesServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Community> communityList = null;
		CommunitiesManager cym = new CommunitiesManager(ds);

		String url = "/WEB-INF/index.jsp";
		try {
			communityList = cym.getCommunity();

		} catch (Exception e) {
			e.printStackTrace();
			// url = "/WEB-INF/index.jsp";
		}
		request.setAttribute("listOfCommunities", communityList);
		url = "/WEB-INF/listCommunities.jsp";
		System.out.println(communityList);
		request.getRequestDispatcher(url).forward(request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
