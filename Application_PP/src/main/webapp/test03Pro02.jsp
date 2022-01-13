<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03 처리</title>
</head>
<body>
	<style>
		hr{
			border: 1px solid gray;
		}
	</style>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	%>

	<h1>로그인 확인</h1>
	<hr />
	<table>
		<tr><td>아이디</td><td><%= request.getParameter("uid")  %> </td><tr>
		<tr><td>비빌번호</td><td><%= request.getParameter("upw")  %> </td><tr>
	</table>
</body>
</html>