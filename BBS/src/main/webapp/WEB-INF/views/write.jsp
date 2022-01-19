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
	<form method="post" action="/ncs7/write" id="frmWrite">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" id="title" name="title"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea id="content" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" id="btnsubmit"
					name="btnsubmit" value="작성완료"></td>
			</tr>
			</tbody>
		</table>
	</form>
</body>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on("submit", "#frmWrite", function(){
	if(nullCheck($("#title").val()))
	{
		alert("타이틀이 비어있습니다.");
		return false;
	} 
	
	if(nullCheck($("#name").val()))
	{
		alert("이름이 비어있습니다.");
		return false;
	} 
	
	if(nullCheck($("#content").val()))
	{
		alert("컨텐츠가 비어있습니다.");
		return false;
	} 
	
	return true;
})
;

function nullCheck(str) {
	str = str.trim();
	
	if (typeof str == "undefined" || str == null || str == "")
		return true;

	return false;
}
</script>
</html>