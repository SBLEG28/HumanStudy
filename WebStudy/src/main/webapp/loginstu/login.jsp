<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="GET" action="login_check.jsp">
		<h2>로그인</h2>
		<table>
			<tr>
				<td>아이디&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" id="uid" name="uid"></td>
			</tr>

			<tr>
				<td>비밀번호&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="password" id="pw" name="pw"></td>
			</tr>

			<tr>
				<td colspan=2><input type="submit" value="로그인"> <input
					type="button" value="취소" onclick="location.href='home.jsp'"></td>
			</tr>

			<tr>
				<td colspan=2><a href="signon.jsp">회원가입</a></td>
			</tr>
		</table>
		
		<%
			String aid = request.getParameter("userid");
			String apw = request.getParameter("psw1");
			
			out.print("uid:"+ aid+"<br>");
			out.print("pw:" + apw +"<br>");
		%>
	</form>
</body>
</html>