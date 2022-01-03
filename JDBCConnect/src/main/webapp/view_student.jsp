<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "ora_user";
	String passcode = "human123";
	String sql = "select * from student order by name";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees</title>
</head>
<style>
table {
	border-collapse: collapse;
}

td, th {
	border: 1px solid blue;
	text-align: center;
}
</style>
<body>
	<table>
		<tr>
			<th>학생명</th>
			<th>수학</th>
			<th>국어</th>
		</tr>
		<%
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); // driver (ojdbc6.jar)
			conn = DriverManager.getConnection(url, userid, passcode); //접속실패시 null if connection failed.
			stmt = conn.createStatement(); // SQL문을 넣을 곳을 만들어라.
			rs = stmt.executeQuery(sql); // SQL문 실행 결과를 rs에 담아라.
			while (rs.next()) {
				String name = rs.getString("name");
				String math = rs.getString("math");
				String korean = rs.getString("korean");
		%>
		<tr>
			<td><%=name%></td>
			<td><%=math%></td>
			<td><%=korean%></td>
		</tr>
		<%
			}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if (rs != null)
		rs.close();
		if (stmt != null)
		stmt.close();
		if (conn != null)
		conn.close();
		}
		%>
	</table>
</body>
</html>