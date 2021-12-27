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
	String a_uid = request.getParameter("uid");
	
	if(a_uid != null){
		out.print(a_uid);
		out.print("<a href='home.jsp'>로그아웃</a>");
	}
	else{
		request.removeAttribute("uid");
		out.print("<a href='login.jsp'>로그인</a>&nbsp&nbsp");
		out.print("<a href='signon.jsp'>회원가입</a>");
	}
	%>
</body>
</html>