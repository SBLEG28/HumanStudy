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
	int v1 = Integer.parseInt(request.getParameter("val1"));
	int v2 = Integer.parseInt(request.getParameter("val2"));
	String op = request.getParameter("oper");

	int result = 0;
	if (op.equals("+")) {
		result = v1 + v2;
	} else if (op.equals("-")) {
		result = v1 - v2;
	} else if (op.equals("*")) {
		result = v1 * v2;
	} else if (op.equals("/")) {
		result = v1 / v2;
	} else
		return;
	%>
	
	Value1 : <%=v1%><br>
	Value2 : <%=v2%><br>
	Operator:<%=op %><br>
	Result : <%=result%><br>
</body>
</html>