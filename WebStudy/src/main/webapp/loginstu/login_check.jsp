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

	<%
	String id = request.getParameter("uid");
	String pw = request.getParameter("pw");
	
	String aid = request.getParameter("userid");
	String apw = request.getParameter("psw1");
	
	out.print("uid:"+ aid+"<br>");
	out.print("pw:" + apw +"<br>");
	
	if (NullCheck(id)) {
	%>
	<script>
		alert("아이디를 입력하지 않았습니다.");
		//history.back();
	</script>
	<%
	return;
	} else {
		if(!id.equals("123")){
			%>
			<script>
				alert("해당 아이디가 존재하지 않습니다.");
				//history.back();
			</script>
			<%
			return;
		}
	}

	if (NullCheck(pw)) {
	%>
	<script>
		alert("비밀번호를 입력하지 않았습니다.");
		//history.back();
	</script>
	<%
	return;
	} else {
		if(!pw.equals("123")){
			%>
			<script>
				alert("비밀번호가 틀립니다.");
				//history.back();
			</script>
			<%
			return;
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
	}
	%>
</body>
</html>