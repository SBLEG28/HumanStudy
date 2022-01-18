<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;

	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "ora_user";
	String pw = "human123";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department</title>
</head>

<style>
table {
	border-collapse: collapse;
}
td {
	border: 1px solid blue;
}
</style>

<body>
	<table>
		<%
		String sql = "UPDATE MENU SET ROOMCODE = ?, "
				   + "				  NAME = '?', " 
				   + "				  TYPE = ? "
				   + "				  HOWMANY = ?, "
				   + "				  HOWMUCH = ?, "
				   + " WHERE ROOMCODE = ?";
				
		try {
			if (request.getParameter("ROOMCODE") == null || request.getParameter("NAME") == null
					|| request.getParameter("TYPE") == null || request.getParameter("HOWMANY") == null
					|| request.getParameter("HOWMUCH") == null) {
				out.print("적절한 값이 주어지지 않았습니다.");
				return;
			}

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, request.getParameter("ROOMCODE"));
			pstmt.setString(2, request.getParameter("NAME"));
			pstmt.setString(3, request.getParameter("TYPE"));
			pstmt.setString(4, request.getParameter("HOWMANY"));
			pstmt.setString(5, request.getParameter("HOWMUCH"));
			
			pstmt.executeUpdate();
				} catch (Exception e) {
			e.printStackTrace();
				} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();

			//request.getRequestDispatcher("controlroom.jsp").forward(request, response);
				}
		%>
	</table>
</body>
</html>