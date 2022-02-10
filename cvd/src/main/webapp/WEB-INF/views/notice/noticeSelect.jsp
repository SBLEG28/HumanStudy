<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeSelect.jsp</title>
</head>
<body>
<div align="center">
	<div><h1>공지사항 보기</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">작성일자</th>
				<td width="150">${notice.noticeDate}</td>
				
				<th width="100">조회수</th>
				<td width="100">${notice.noticeHit }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="5">${notice.noticeTitle }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="5">
					<textarea rows="10" cols="100">${notice.noticeContent }</textarea>
			</tr>
		</table>
	</div><br>
	<div>
		<form action="noticeUpdateForm.do" method="post">
			<button type="button" onclick="location.href='noticeList.do'">목록</button>&nbsp;&nbsp;
			
			<c:if test="${authority == 'ADMIN'}">
				<button type="submit">수정</button>&nbsp;&nbsp;
			</c:if>
			<input type="hidden" name="id" value="${notice.noticeId }">
			
			<c:if test="${authority == 'ADMIN'}">
				<button type="button" onclick="noticeDelete()">삭제</button>&nbsp;&nbsp;
			</c:if>	
				<input type="hidden" id="pkid" name="pkid" value="${notice.noticeId }">
		</form>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="js/notice.js"></script> 

</body>
</html>