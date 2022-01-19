<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" value="${post.title}" readonly></td>
			<//td>
			<td><input type="text" value="${post.name}" readonly></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea value="${post.content}" readonly></textarea></td>
		</tr>
		<tr>
			<td colspan=2><input type="button" id="btnCancle"
				name="btnCancle" value="목록보기"></td>
		</tr>
		</tbody>
	</table>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on("click", "#btnCancle", function(){
	document.location = "/ncs7/list";
	return false;
});
</script>
</html>