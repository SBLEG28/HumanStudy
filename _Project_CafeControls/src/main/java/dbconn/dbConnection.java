package dbconn;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public class dbConnection{
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;

	private String url;
	private String userid;
	private String passcode;

	public dbConnection() {
		conn = null;
		pstmt = null;
		stmt = null;
		rs = null;
		
		// DB 접속정보
		url = "jdbc:oracle:thin:@localhost:1521:orcl";
		userid = "ora_user";
		passcode = "human123";
	}
	
	public ResultSet stmtConn(String sql){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			conn = DriverManager.getConnection(url, userid, passcode); // null if connection failed.
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return rs;
	}
	
	public void pstmtConn(String sql){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			conn = DriverManager.getConnection(url, userid, passcode); // null if connection failed.
			
			pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
	}
	
	public void pstmtsetString(int idx, String str){
		try {
			pstmt.setString(idx, str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void pstmtsetInt(int idx, int parm) {
		try {
			pstmt.setInt(idx, parm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void pstmtexcute() throws SQLException {
		pstmt.executeUpdate();
	}

	public void closeConnection() {
		try {
			if (stmt != null)
				stmt.close();
			
			if (pstmt != null)
				pstmt.close();
			
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}