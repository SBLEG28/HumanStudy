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
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	String str1[] = request.getParameterValues("item");

	String str2 = "";
	for (String str : str1)
		str2 += str + "<br>";
	%>
	
	* 선 택 목 록 *<br>
	<%=str2 %>
</body>
</html>