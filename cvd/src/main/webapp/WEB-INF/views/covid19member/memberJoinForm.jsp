<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>회원가입</h1></div>
	<div>
		<form id="frm" action="join.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">아이디</th>
						<td width="150"><input type="text" id="id" name="id"></td>
					</tr>
					<tr>
						<th width="100">비밀번호</th>
						<td width="150"><input type="password" id="password" name="password"></td>
					</tr>
					<tr>
						<th width="100">이름</th>
						<td width="150"><input type="text" id="name" name="name"></td>
					</tr>
					<tr>
						<th width="100">전화번호</th>
						<td width="150"><input type="tel" id="tel" name="tel"></td>
					</tr>
					<tr>
						<th width="100">주소</th>
						<td width="150"><input type="text" id="address" name="address"></td>
					</tr>
						<tr>
						<th width="100">권한</th>
						<td width="150"><input type="text" id="author" name="author" value="user" readonly="readonly"></td>
					</tr>
				</table>
			</div><br>
			<div>
				<input type="submit" value="회원가입">
				<input type="reset" value="취소">
			</div>
		</form>
	</div>
</div>
</body>
</html>