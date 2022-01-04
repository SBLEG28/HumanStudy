<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="javabeans.MemberBean"></jsp:useBean>

<%
// 	member.setName("aaa");
%>
<jsp:setProperty property="name" name="name" value="aaa"/>
<%= member.getName() %><br>
<jsp:getProperty name="mamber" property="name"/>

</body>
</html>