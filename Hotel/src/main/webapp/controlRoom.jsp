<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실관리</title>
</head>
<style>
table {border-collapse:collapse;}
th,td {border:1px solid blue;}
</style>
<body>
<table id=tblRoom> <!-- 객실목록 -->
<thead>
	<tr><th>객실번호</th><th>객실명</th><th>객실종류</th><th>숙박가능인원</th>
		<th>숙박비</th></tr>
</thead>
<tbody>
</tbody>
<tbody>
</tbody>
</table>
<table><!-- 입력부분 -->
<tr><td>객실번호:<input type=number id=code></td></tr>
<tr><td>객실명:<input type=text id=name></td></tr>
<tr><td>객실종류:<input type=number id=roomtype></td></tr>
<tr><td>숙박가능인원:<input type=number id=howmany></td></tr>
<tr><td>숙박비:<input type=number id=fare></td></tr>
<tr><td align=center><input type=button value='전송'></td></tr>
</table> 
</body>
</html>
