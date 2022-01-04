<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="PageStyle.css">
<jsp:include page="header.jsp" />
<title>Sing In</title>
</head>
<body>
	<div class="row">
		<div class="card">
			<form method="GET" action="login_check.jsp" id="frmLogin">
				<h2>로그인</h2>
				<div class="fakeimg" style="height: 250px;">
					<table class="TableStyle">
						<tr>
							<td>아이디&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><input type="text" id="uid" name="uid"></td>
						</tr>

						<tr>
							<td>비밀번호&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><input type="password" id="pw" name="pw"></td>
						</tr>

						<tr>
							<td colspan=2><input type="submit" value="로그인"> <input
								type="button" value="취소" onclick="location.href='home.jsp'"></td>
						</tr>

						<tr>
							<td colspan=2><a href="signon.jsp">회원가입</a></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
<footer>
	<jsp:include page="Footer.jsp" />
</footer>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="login_check.js"></script>
</html>