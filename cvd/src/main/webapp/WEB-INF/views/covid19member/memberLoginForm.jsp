<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>notice</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Custom styles for this template -->
<link href="css/stylelogin.css" rel="stylesheet" />
</head>
<body class="sub_page">
	<!-- 로그인폼 시작 -->
	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login()">로그인</button>
				<button type="button" class="togglebtn" onclick="register()">회원가입</button>
			</div>
			
			<!--  
			<form id="frm" action="login.do" method="post" class="input-group">
				<input type="text" class="input-field" id="phoneNumber" name="phoneNumber" placeholder="휴대폰번호" required>
				<input type="password" class="input-field" id="password" name="password" placeholder="비밀번호" required><br> <br>
				<button class="submit" id="btnLogin" name="btnLogin" style="color: white;">Login</button>
			</form>
			-->
			
			<div class="input-group">
				<input type="text" class="input-field" id="phoneNumber"
					name="phoneNumber" placeholder="휴대폰번호" required> <input
					type="password" class="input-field" id="password" name="password"
					placeholder="비밀번호" required><br> <br>
				<button class="submit" id="btnLogin" name="btnLogin"
					style="color: white;" onclick="login_Exce()">Login</button>
			</div>

			<!-- 
			form을 사용하지 않는다 -> div로 수정
			form 안에 있는 submit 버튼에 onclick="함수명()" 을 준다.
			 -->
			<form id="register" action="" class="input-group">
				<input type="text" class="input-field" placeholder="이름" required>
				<input type="text" class="input-field"
					placeholder="생년월일 (1990-01-01 형식으로 표기)" required> <input
					type="text" class="input-field" placeholder="성별 (남/여 입력)" required>
				<input type="text" class="input-field" placeholder="휴대폰번호 (숫자로만 입력)"
					required> <input type="password" class="input-field"
					placeholder="비밀번호" required> <input type="text"
					class="input-field" placeholder="주소" required> <input
					type="text" class="input-field" placeholder="격리 시작일" required><br>
				<br>
				<button class="submit" style="color: white;" >Create Account</button>
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
	<script type="text/javascript" src="js/loginform.js"></script>
</body>
<!-- 로그인폼 끝 -->
</html>