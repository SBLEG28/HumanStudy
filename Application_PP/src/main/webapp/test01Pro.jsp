<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01 처리</title>
</head>
<body>
	<%
	double radius = Double.parseDouble(request.getParameter("radius"));
	
	double area = Math.pow(radius, 2) * Math.PI;
	double round = (radius*2) * Math.PI;
	%>

	반지름 : <%= radius %> <br>
	원의 면적 : <%= area %> <br>
	원의 둘레 : <%= round %>
</body>
</html>