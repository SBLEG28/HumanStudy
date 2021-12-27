<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!public boolean NullCheck(String str) {
		return str.equals("") || str == null ? true : false;
	}

	public boolean NullCheck(String[] str) {
		return str == null ? true : false;
	}%>

	<%@ page import="java.net.URLEncoder"%>

	<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String id = request.getParameter("userid");
	String psw1 = request.getParameter("psw1");
	String psw2 = request.getParameter("psw2");
	String mobile = request.getParameter("mobile");

	String inter[] = request.getParameterValues("interest");

	if (NullCheck(name)) {
	%>
	<script>
		alert("실명을 입력하지 않았습니다.");
		history.back();
	</script>
	<%
	return;
	}

	if (NullCheck(gender)) {
	%>
	<script>
		alert("성별을 입력하지 않았습니다.");
		history.back();
	</script>
	<%
	return;
	}

	if (NullCheck(id)) {
	%>
	<script>
		alert("아이디를 입력하지 않았습니다.");
		history.back();
	</script>
	<%
	return;
	}

	if (NullCheck(psw1)) {
	%>
	<script>
		alert("비밀번호를 입력하지 않았습니다.");
		history.back();
	</script>
	<%
	return;
	}

	if (NullCheck(psw2)) {
	%>
	<script>
		alert("비밀번호 확인을 입력하지 않았습니다.");
		history.back();
	</script>
	<%
	return;
	}

	if (NullCheck(inter)) {
	%>
	<script>
		alert("관심분야를 한개 이상 선택하지 않았습니다.");
		history.back();
	</script>
	<%
	return;
	}
	%>

	<%
	if ((!NullCheck(psw2)) && (!psw1.equals(psw2))) {
	%>
	<script>
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
		history.back();
	</script>
	<%
	return;
	} else {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	%>
</body>
</html>