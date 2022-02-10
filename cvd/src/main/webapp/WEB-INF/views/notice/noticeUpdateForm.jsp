<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeSelect.jsp</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>공지사항 수정</h1>
		</div>
		<div>
			<form id="frm" action="noticeUpdate.do" method="post">
				<div>
					<table border="1">
						<tr>

							<th width="100">작성일자</th>
							<td width="150">
							<input type="date" size="59" id="noticeDate" name="noticeDate" value="${notice.noticeDate}"></td>

							<th width="100">조회수</th>
							<td width="100">${notice.noticeHit }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5">
							<input type="text" id="noticeTitle" name="noticeTitle" value="${notice.noticeTitle }"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5"><textarea rows="10" cols="100" name="noticeContent">${notice.noticeContent }</textarea></td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="hidden" name="id" value="${notice.noticeId }">
					<button type="submit">수정</button>&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
					<button type="button" onclick="location.href='noticeList.do'">목록</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>