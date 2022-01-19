<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목옥</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>게시물 번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성시각</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="post" items="${alPost}">
				<tr onclick="document.location='/ncs7/view?id=${post.id}'">
					<td>${post.id}</td>
					<td>${post.title}</td>
					<td>${post.name}</td>
					<td>${post.created}</td>
					<td>${post.hit}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<input type="button" value="게시글 작성" onclick="document.location = '/ncs7/compose'">
</body>
</html>