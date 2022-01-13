<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04 폼</title>
</head>
<body>
<style>
	hr{
		border: 1px solid gray;
	}
</style>

<h1>회원 가입 폼</h1>
<hr />

<form method="GET" action="test04Pro.jsp">
	<table>
		<tr><td>회원 아이디:</td><td><input type="text" name="uid"/></td></tr>
		<tr><td>회원 이름:</td><td><input type="text" name="name"/></td></tr>
		<tr><td>회원 나이:</td><td><input type="number" name="age"/></td></tr>
		<tr><td>회원 전화번호:</td><td><input type="text" name="phone"/></td></tr>
	</table>
	
	<input type="submit" value="회원가입"/>
</form>

</body>
</html>