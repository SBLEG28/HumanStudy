<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03 처리</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	%>
	
	<script>
		alert("<%=request.getParameter("uid")%>" + "님 환영합니다.");
		location.href="test03Pro02.jsp?uid="+"<%=request.getParameter("uid")%>"+"&upw="+"<%=request.getParameter("upw")%>";
	</script>
</body>
</html>