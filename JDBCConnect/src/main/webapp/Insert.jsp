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
		String sql = "INSERT INTO MENU VALUES('?', ?)";
		
		try {
			if(request.getParameter("menu") = null || request.getParameter("price") == null){
				out.print("적절한 값이 주어지지 않았습니다.");
				return;
			}
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("menu"));
			pstmt.setString(2, request.getParameter("price"));
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
			
			request.getRequestDispatcher("view_student.jsp").forward(request, response);
		}
		%>
	</table>
</body>
</html>