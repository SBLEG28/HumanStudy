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
	border: 1px solid black;
}
</style>

<body>

	DB 출력<br><br>
	<table>
		<thead>
			<tr>
				<th>ROOMCODE</th>
				<th>NAME</th>
				<th>TYPE</th>
				<th>HOWMANY</th>
				<th>HOWMUCH</th>
			<tr>
				<%
		String sql = "SELECT * FROM ROOM ORDER BY ROOMCODE";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int rm_code = rs.getInt("ROOMCODE");
				String name   = rs.getString("NAME");
				int rm_type = rs.getInt("TYPE");
				int rm_price = rs.getInt("HOWMANY");
				int rm_people = rs.getInt("HOWMUCH");
				
				out.print("<tr>");
				out.print("<td>" + rm_code + "</td>");
				out.print("<td>" + name + "</td>");
				out.print("<td>" + rm_type + "</td>");
				out.print("<td>" + rm_people + "</td>");
				out.print("<td>" + rm_people + "</td>");
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
	
	<br><br><br>
	DB 실행부<br><br>
	<form action="controlroom.jsp" method="GET" id=frmSubmit >
		<table id='TableStyle'>
			<tr>
				<td id="td_Text">객실코드</td>
				<td><input type="number" id="ROOMCODE" name="ROOMCODE"></td>
			</tr>

			<tr>
				<td id="td_Text">객실명</td>
				<td><input type="text" id="NAME" name="NAME"></td>
			</tr>

			<tr>
				<td id="td_Text">객식타입</td>
				<td><input type="number" id="TYPE" name="TYPE"></td>
			</tr>

			<tr>
				<td id="td_Text">숙박가능인원</td>
				<td><input type="number" id="HOWMANY" name="HOWMANY"></td>
			</tr>

			<tr>
				<td id="td_Text">숙박지</td>
				<td><input type="number" id="HOWMUCH" name="HOWMUCH"></td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="submit" id="btnAcc" name="btnAcc" value="실행">
				</td>
			</tr>
		</table>
	</form>
</body>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="controlroom_JS.js"></script>
</html>