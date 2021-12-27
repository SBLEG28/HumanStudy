<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
String str = "안녕하세요";
int a = 5, b = 5; 

public int abs(int n){
	if (n < 0)
		n = -n;
	
	return n;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">a
<title>Insert title here</title>
</head>
<body>

<%
out.print(str+"<br>");
out.print(a + "의 절댓값 = " + abs(a));
%>

</body>
</html>