<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

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
		<thead>
			<tr>
				<th>메뉴명</th>
				<th>가격</th>
			<tr>
		<%
		String sql = "SELECT * FROM MENU ORDER BY NAME";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String name   = rs.getString("NAME");
				int price = rs.getInt("PRICE");

				out.print("<tr>");
				out.print("<td>" + name + "</td>");
				out.print("<td>" + price + "</td>");
				out.print("</tr>");
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
			
		</thead>
	</table>
</body>
</html>