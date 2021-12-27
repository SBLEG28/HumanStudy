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
if(request.getParameter("userid").equals("xaexal") && request.getParameter("password").equals("123")){
	request.setAttribute("userid", "xaexal");
	request.setAttribute("password", "123");
	
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
}
else{
	RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
	rd.forward(request, response);
}
%>
</body>
</html>