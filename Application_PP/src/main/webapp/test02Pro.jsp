<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02 처리</title>
</head>
<body>
	<style>
		hr{
			border: 1px solid gray;
		}
		table{
			border: 1px solid black;
		}
		th{
			border: 1px solid black;
			min-width:80px;	
		}
		td{
			border: 1px solid black;
			min-width:250px;	
		}
	</style>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	%>

	<h1>회원 정보 확인</h1>
	<hr />
	<table>
		<tr><th>이름</th><td><%= request.getParameter("name")  %> </td><tr>
		<tr><th>나이</th><td><%= request.getParameter("age")  %> </td><tr>
		<tr><th>전화번호</th><td><%= request.getParameter("phone")  %> </td><tr>
		<tr><th>주소</th><td><%= request.getParameter("address")  %> </td><tr>
	</table>
</body>
</html>