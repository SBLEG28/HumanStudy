<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중선택</title>
</head>
<body>
	<!--  <form method="GET" action = "multiServlet">-->
	<form method="GET" action="multiple_bk.jsp">
		<select name="item" multiple>
			<option value="신발">신발</option>
			<option value="가방">가</option>
			<option value="벨트">벨트</option>
			<option value="시계">시계</option>
			<option value="반지">반지</option>
		</select><br>

		<!--
	<input type="checkbox" name="item" value="신발">신발<br>
	<input type="checkbox" name="item" value="가방">가방<br>
	<input type="checkbox" name="item" value="벨트">벨트<br>
	<input type="checkbox" name="item" value="시계">시계<br>
	<input type="checkbox" name="item" value="반지">반지<br>
	 -->

		<input type="submit" value="전송"><br> 		
		<input type="reset"	value="취소">	<br>
	</form>
</body>
</html>