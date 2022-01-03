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
<title>Employees</title>
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
		try {
			String sql = "select * from employees";

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int eid = rs.getInt("employee_id");
				String ename = rs.getString("emp_name");
				int salary = rs.getInt("salary");
				int mid = rs.getInt("manager_id");
				int did = rs.getInt("department_id");
				String jobid = rs.getString("job_id");

				out.println("<tr><td>" + eid + "</td><td>" + ename + "</td><td>" + salary + "</td><td>" + mid + "</td><td>"
				+ did + "</td><td>" + jobid + "</td></tr>");
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