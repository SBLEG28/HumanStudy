<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getContextPath() %><br>
<%= request.getMethod() %><br>
<%= request.getRequestURL() %><br>
<%= request.getRequestURI() %><br>
<%= request.getQueryString() %><br>
<%= request.getSession(true) %><br>
<%= request.getRequestDispatcher("03_dec.jsp") %><br>
<%= request.getRemoteHost() %><br>
<%= request.getRemoteAddr() %><br>
<%= request.getSession() %><br>
<%= request.getServerName() %><br>
<%= request.getProtocol() %><br>
</body>
</html>