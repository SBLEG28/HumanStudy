
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconn.db_sql;

/**
 * Servlet implementation class insert
 */
@WebServlet("/insert")
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public insert() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html, charset=utf-8");

		db_sql db = new db_sql();

		if (request.getParameter("move").equals("menu")) 
			db.ins_menu(Integer.parseInt(request.getParameter("code"))
					, request.getParameter("name")
					, Integer.parseInt(request.getParameter("price"))
					, request.getParameter("ctg")
					);
		else if (request.getParameter("move").equals("sales"))
			db.ins_ord_sale(request.getParameter("mobile")
						, Integer.parseInt(request.getParameter("menu"))
						, Integer.parseInt(request.getParameter("total"))
						, Integer.parseInt(request.getParameter("qty"))
						);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}