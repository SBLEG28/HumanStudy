<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02 폼</title>
</head>
<body>
<style>
	hr{
		border: 1px solid gray;
	}
</style>

<h1>회원 입력 폼</h1>
<hr />

<form method="GET" action="test02Pro.jsp">
	<table>
		<tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
		<tr><td>나이:</td><td><input type="number" name="age"/></td></tr>
		<tr><td>전화번호:</td><td><input type="phone" name="phone"/></td></tr>
		<tr><td>주소:</td><td><input type="text" name="address"/></td></tr>
		<tr><td colspan=2><input type="submit" value="입력완료"/></td></tr>
	</table>
</form>

</body>
</html>