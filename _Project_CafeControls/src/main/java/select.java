import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconn.db_sql;

/**
 * Servlet implementation class select
 */
@WebServlet("/select")
public class select extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public select() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String strReturn = "";
		db_sql db = new db_sql();

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		if (request.getParameter("move").equals("menu_ctg")) 
			strReturn = db.sel_ord_ctg();
		else if (request.getParameter("move").equals("menu"))
			strReturn = db.sel_menu();
		else if (request.getParameter("move").equals("sales"))
			strReturn = db.sel_ord_sales();
		else if (request.getParameter("move").equals("manu_sales"))
			strReturn = db.sel_menu_sales();
		else if (request.getParameter("move").equals("cus_sales"))
			strReturn = db.sel_cus_sales();
		
		System.out.println(strReturn);
		response.getWriter().print(strReturn);
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