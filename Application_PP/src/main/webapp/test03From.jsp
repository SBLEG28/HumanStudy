<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03 폼</title>
</head>
<body>
<style>
	hr{
		border: 1px solid gray;
	}
</style>

<h1>로그인 폼</h1>
<hr />

<form method="GET" action="test03Pro.jsp">
	<table>
		<tr><td>아이디:</td><td><input type="text" name="uid"/></td></tr>
		<tr><td>비밀번호:</td><td><input type="password" name="upw"/></td></tr>
	</table>
	
	<input type="submit" value="로그인"/>
	<input type="button" value="취소" onclick="reset()"/>
</form>

<script>
function reset(){
	document.getElementByName("uid") = "";
	document.getElementByName("upw") = "";
};
</script>

</body>
</html>