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
		<%
		String sql = "SELECT A.DEPARTMENT_ID   AS DEPT_ID,"      
					+ "      A.DEPARTMENT_NAME AS DEPT_NAME,"    
					+ "		 B.EMP_NAME        AS MANE_NAME, "   
					+ "		 A.PAR_DEPT_NAME   AS PAR_DEPT_NAME "
			        + "FROM (SELECT A2.DEPARTMENT_NAME AS PAR_DEPT_NAME, A1.DEPARTMENT_NAME, A1.DEPARTMENT_ID, A1.MANAGER_ID " 
			        + "        FROM DEPARTMENTS A1, DEPARTMENTS A2 "
					+ "       WHERE A1.PARENT_ID = A2.DEPARTMENT_ID(+)) A,"
			        + "     (SELECT * FROM EMPLOYEES) B "
			        + "WHERE A.MANAGER_ID = B.EMPLOYEE_ID(+)";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String dept_id   = rs.getString("DEPT_ID");
				String dept_name = rs.getString("DEPT_NAME");
				String emp_name  = rs.getString("MANE_NAME");
				String par_dept_name = rs.getString("PAR_DEPT_NAME");

				out.print("<tr>");
				out.print("<td>" + dept_id + "</td>");
				out.print("<td>" + dept_name + "</td>");
				out.print("<td>" + emp_name + "</td>");
				out.print("<td>" + par_dept_name + "</td>");
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
	</table>
</body>
</html>