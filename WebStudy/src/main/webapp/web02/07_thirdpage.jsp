<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println("thirdpage.jsp<br>");
	out.println("하나의 PAGE 속성: " + pageContext.getAttribute("name") + "<br>");
	out.println("하나의 REQUEST 속성: " + request.getAttribute("name") + "<br>");
	out.println("하나의 SESSION 속성: " + session.getAttribute("name") + "<br>");
	out.println("하나의 APPLICATION 속성: " + application.getAttribute("name") + "<br>");
	%>
</body>
</html>