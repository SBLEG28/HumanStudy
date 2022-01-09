package dbconn;

import java.sql.ResultSet;
import java.sql.SQLException;

public class db_sql {
	private ResultSet rs;
	private String strReturn;
	private dbConnection conn;
	
	public db_sql() {
		strReturn = "";
		conn = new dbConnection();
	}
	
	public String sel_ord_ctg() {
		String sql = "SELECT * FROM MENU_CATEGORY ORDER BY CODE";

		try {
			rs = conn.stmtConn(sql);

			while (rs.next()) {
				if (!strReturn.equals(""))
					strReturn += ";";
				
				strReturn += rs.getString("CODE") + "/" + rs.getString("NAME");
			}
			
			System.out.println("-");
			System.out.println(strReturn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}
	
	public String sel_ord_menu() {
		String sql = "SELECT A.*, B.NAME AS CTG_NAME FROM MENU A, MENU_CATEGORY B WHERE A.CTG_CODE = B.CODE ORDER BY CTG_CODE, A.CODE";
		
		try {
			rs = conn.stmtConn(sql);
			
			while (rs.next()) {
				if (!strReturn.equals(""))
					strReturn += ";";
				
				strReturn += rs.getInt("CODE")    	 + "/" 
					      + rs.getString("NAME")  	 + "/"
					      + rs.getString("PRICE") 	 + "/"
					      + rs.getString("CTG_CODE") + "/"
					      + rs.getString("CTG_NAME");
				
			}
			
			System.out.println("-");
			System.out.println(strReturn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}
	
	public String sel_ord_sales() {
		String sql = "SELECT * FROM MENU_CATEGORY ORDER BY CODE";
		String temp = "";
		
		try {
			rs = conn.stmtConn(sql);

			while (rs.next()) {
				if (!strReturn.equals(""))
					strReturn += ";";
				
				strReturn += temp == rs.getString("PHONE") ? " " : rs.getString("PHONE") + "/"
						  + rs.getString("MENU")   + "/"
						  + rs.getString("QTY")    + "/"
						  + rs.getString("TOTAL")   + "/"
						  ;
				
				temp = rs.getString("PHONE");
			}
			
			System.out.println("-");
			System.out.println(strReturn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}
	
	public String ins_ord_sale(String mobile, int menu, int qty, int total) {
		String sql = "INSERT INTO CAFE_SALES VALUES (TO_CHAR(SYSDATE, 'YYYYMMDD'), SEQ_SALES.nextval,?,?,?,? )";

		try {
			conn.pstmtConn(sql);
			
			conn.pstmtsetString(1, mobile);
			conn.pstmtsetInt(2, menu);
			conn.pstmtsetInt(3, qty);
			conn.pstmtsetInt(4, total);
			
			conn.pstmtexcute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}

	public String del_ord_menu(int code) {
		String sql = "DELETE FROM MENU WHERE CODE = ?)";

		try {
			conn.pstmtConn(sql);

			conn.pstmtsetInt(1, code);
			conn.pstmtexcute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}
}
