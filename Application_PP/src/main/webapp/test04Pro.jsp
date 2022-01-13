<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04 처리</title>
</head>
<style>
	hr{
		border: 1px solid gray;
	}
	table{
		border: 1px solid black;
	}
	th{
		border: 1px solid black;
		min-width:150px;	
	}
	td{
		border: 1px solid black;	
		min-width:300px;	
	}
</style>

<body>
	<jsp:useBean id="member" class="member.Member"></jsp:useBean>
	
	<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	
	member.setUid(request.getParameter("uid"));
	member.setName(request.getParameter("name"));
	member.setAge(Integer.parseInt(request.getParameter("age")));
	member.setPhone(request.getParameter("phone"));
	%>

	<table>
		<thead><th colspan=2>회원 정보 확인</th></thead>
		<tr><th>이름</th><td><%= member.getUid()  %> </td><tr>
		<tr><th>나이</th><td><%= member.getName() %> </td><tr>
		<tr><th>전화번호</th><td><%= member.getAge()  %> </td><tr>
		<tr><th>주소</th><td><%= member.getPhone()  %> </td><tr>
	</table>
</body>
</html>