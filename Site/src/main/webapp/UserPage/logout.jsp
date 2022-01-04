<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<% 
   session.invalidate(); //모든 session attributes를 삭제(제거)
   response.sendRedirect("home.jsp");
%>
</body>
</html>