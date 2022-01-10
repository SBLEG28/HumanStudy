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
			
			//System.out.println("-");
			//System.out.println(strReturn);
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
			
			//System.out.println("-");
			//System.out.println(strReturn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}
	
	public String sel_ord_sales() {
		String sql = "SELECT A.MOBILE, "
				   + "       TO_CHAR(A.QTY , '999,999,999,999,999')   AS QTY, "
				   + "       TO_CHAR(A.TOTAL , '999,999,999,999,999') AS TOTAL, "
				   + "	     B.NAME AS MENU"
				   + "  FROM (SELECT * FROM CAFE_SALES WHERE SALES_DATE = TO_CHAR(SYSDATE, 'YYYYMMDD')) A, "
				   + "       (SELECT * FROM MENU) B "
				   + " WHERE A.MENU_CODE = B.CODE"
				   + " ORDER BY A.MOBILE, A.CODE";
		
		String temp = "";
		
		try {
			rs = conn.stmtConn(sql);

			while (rs.next()) {
				if (!strReturn.equals(""))
					strReturn += ";";
								
				strReturn += (temp.equals(rs.getString("MOBILE")) ? "" : rs.getString("MOBILE")) + "/"
						  + rs.getString("MENU")   + "/"
						  + rs.getString("QTY")    + "/"
						  + rs.getString("TOTAL");
				
				temp = rs.getString("MOBILE");
				
				System.out.println("------ ");
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

	public String sel_menu_sales() {
		String sql =  "SELECT B.NAME AS MENU, "
					//+ "       TO_CHAR(TO_DATE(SALES_DATE), 'YYYYMM') AS SALES_DATE, "
					+ "       SUM(QTY) AS QTY, "
					+ "       SUM(TOTAL) AS TOTAL "
					+ "  FROM CAFE_SALES A, MENU B "
					+ " WHERE A.MENU_CODE = B.CODE "
					+ " GROUP BY B.NAME  "
					+ " ORDER BY B.NAME";
		
		String temp = "";
		
		try {
			rs = conn.stmtConn(sql);

			while (rs.next()) {
				if (!strReturn.equals(""))
					strReturn += ";";
								
				strReturn += rs.getString("MENU") 		 + "/"
						  //+ (temp.equals(rs.getString("SALES_DATE")) ? "" : rs.getString("SALES_DATE")) + "/"
						  + rs.getString("QTY")    		 + "/"
						  + rs.getString("TOTAL");
				
				//temp = rs.getString("SALES_DATE");
			}

			System.out.println(strReturn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}

	
	public String sel_cus_sales() {
		String sql = "SELECT A.* "
					+ "  FROM (SELECT MOBILE, "
					//+ "              TO_CHAR(TO_DATE(SALES_DATE), 'YYYYMM') AS SALES_DATE, "
					+ "              SUM(QTY) AS QTY, "
					+ "              SUM(TOTAL) AS TOTAL "
					+ "         FROM CAFE_SALES "
					+ "        GROUP BY MOBILE) A "
					+ " ORDER BY TOTAL DESC";
		
		String temp = "";
		
		try {
			rs = conn.stmtConn(sql);

			while (rs.next()) {
				if (!strReturn.equals(""))
					strReturn += ";";
								
				strReturn += rs.getString("MOBILE") + "/"
						  //+ (temp.equals(rs.getString("SALES_DATE")) ? "" : rs.getString("SALES_DATE")) + "/"
						  + rs.getString("QTY")    + "/"
						  + rs.getString("TOTAL");
				
				//temp = rs.getString("SALES_DATE");
			}
			
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

	public String ins_menu(int code, String menu, int price, String ctg) {
		String sql = "INSERT INTO MENU VALUES (?,?,?,?)";
		
		try {
			conn.pstmtConn(sql);
			
			System.out.println(sql);
			
			conn.pstmtsetInt(1, code);
			conn.pstmtsetString(2, menu);
			conn.pstmtsetInt(3, price);
			conn.pstmtsetString(4, ctg);
			
			conn.pstmtexcute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return strReturn;
	}
	
	public String up_menu(int oldcode, int newcode, String menu, int price, String ctg) {
		String sql = "UPDATE MENU SET CODE = ?, NAME = ?, PRICE = ?, CTG_CODE = ?  WHERE CODE = ?";
		
		try {
			conn.pstmtConn(sql);
			
			System.out.println(sql);
			
			conn.pstmtsetInt(1, newcode);
			conn.pstmtsetString(2, menu);
			conn.pstmtsetInt(3, price);
			conn.pstmtsetString(4, ctg);
			conn.pstmtsetInt(5, oldcode);
			
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
		String sql = "DELETE FROM MENU WHERE CODE = ?";

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
