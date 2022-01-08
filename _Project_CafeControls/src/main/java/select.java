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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String url = "jdbc:oracle:thin:@localhost:1521:orcl"; // DB접속정보
		String userid = "ora_user";
		String passcode = "human123";

		String strReturn = "";
		String sql = "";
		try {
			
			if (request.getParameter("acc").equals("menu_ctg")) {
				sql = "SELECT * FROM MENU_CATEGORY ORDER BY CODE";
				
				Class.forName("oracle.jdbc.driver.OracleDriver");

				conn = DriverManager.getConnection(url, userid, passcode); // null if connection failed.
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					if (!strReturn.equals(""))
						strReturn += ";";
					strReturn += rs.getString("CODE") + "/" + rs.getString("NAME");
				}
			}
			else if (request.getParameter("acc").equals("menu")) {
				sql = "SELECT A.*, B.NAME AS CTG_NAME FROM MENU A, MENU_CATEGORY B WHERE A.CTG_CODE = B.CODE ORDER BY CTG_CODE, A.CODE";
				
				Class.forName("oracle.jdbc.driver.OracleDriver");

				conn = DriverManager.getConnection(url, userid, passcode); // null if connection failed.
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					if (!strReturn.equals(""))
						strReturn += ";";
					strReturn += rs.getInt("CODE")    	 + "/" 
						      + rs.getString("NAME")  	 + "/"
						      + rs.getString("PRICE") 	 + "/"
						      + rs.getString("CTG_CODE") + "/"
						      + rs.getString("CTG_NAME");
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

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