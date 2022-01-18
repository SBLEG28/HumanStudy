<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Soobin's WebSite</title>

<%
String a_uid = request.getParameter("uid");

if (a_uid != null) {
	out.print("<div class='topnav'><a href='/edu/login'>Log out</a>");
	out.print("<a>" + a_uid +" 회원</a>&nbsp;&nbsp;</div>");
} else {
	request.removeAttribute("uid");
	out.print("<div class='topnav'><a href='/edu/signon'>Sign Up</a>&nbsp;&nbsp;");
	out.print("<a href='login.jsp'>Sign In</a></div><br>");
}
%>
<jsp:include page="header.jsp" />
</head>
<body>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<h2>TITLE HEADING</h2>
				<h5>Title description</h5>
				<div class="fakeimg" style="height: 200px;">Image</div>
				<p>Some text..</p>
				<p>Some text..</p>
			</div>
			<div class="card">
				<h2>TITLE HEADING</h2>
				<h5>Title description</h5>
				<div class="fakeimg" style="height: 200px;">Image</div>
				<p>Some text..</p>
				<p>Some text..</p>
			</div>
		</div>
		<div class="rightcolumn">
			<div class="card">
				<h2>오늘의 메뉴</h2>
				<div class="fakeimg" style="height: 100px;">Image</div>
				<p>Some text..</p>
			</div>
			<div class="card">
				<h2>인기메뉴</h2>
				<div class="fakeimg">
					<p>Image</p>
				</div>
				<div class="fakeimg">
					<p>Image</p>
				</div>
				<div class="fakeimg">
					<p>Image</p>
				</div>
			</div>
			<div class="card">
				<h2>Follow Me</h2>
				<p>Some text..</p>
			</div>
		</div>
	</div>

</body>
<footer>
	<jsp:include page="Footer.jsp" />
</footer>
</html>