<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/pageStyle.css">
<jsp:include page="header.jsp" />
<title>Sign Up</title>
</head>
<body>
	<div class="row">
		<div class="card">
			<h2>회원가입</h2>
			<div class="fakeimg" style="height: 405px;">
				<table class="TableStyle">
					<tr>
						<td>실명</td>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td><input type="radio" name="gender" value="남성" checked>
							남성 <input type="radio" name="gender" value="여성"> 여성</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="userid" id="userid"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="psw1" id="psw1"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" name="psw2" id="psw2"></td>
					</tr>
					<tr>
						<td>관심분야</td>
						<td colspan=3><input type="checkbox" name="interest"
							value="정치">정치 <input type="checkbox" name="interest"
							value="경제">경제 <input type="checkbox" name="interest"
							value="사회">사회 <input type="checkbox" name="interest"
							value="문화">문화 <br>
						<input type="checkbox" name="interest" value="역사">역사 <input
							type="checkbox" name="interest" value="연예">연예 <input
							type="checkbox" name="interest" value="스포츠">스포츠 <input
							type="checkbox" name="interest" value="예술">예술<br></td>
					</tr>
					<tr>
						<td colspan=4 align=center><input type="button" id="signon"
							name="signon" value="가입완료"> <input type="button"
							value="취소" onclick="location.href='/edu'"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
<footer>
	<jsp:include page="Footer.jsp" />
</footer>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="js/Common.js"></script>
<script type="text/javascript" src="js/sign_check.js"></script>
</html>