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
	<div><h1>증상기록</h1></div>
	<div>
		<form id="frm" action="recordWrite.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">기록시각</th>
						<td width="150"><input type="text" id="recordTime" name="recordTime" readonly="readonly"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td colspan="3"><input type="text" size="59" id="name" name="name" value="${name }" readonly="readonly"></td>
					</tr>
					<tr>
						<th>휴대번호</th>
						<td colspan="3"><input type="text" size="59" id="phoneNumber" name="phoneNumber" value="${phoneNumber }" readonly="readonly"></td>
					</tr>
					<tr>
						<th>열</th>
						<td colspan="3"><input type="text" size="59" id="temperature" name="temperature"></td>
					</tr>
					<tr>
						<th>산소포화도</th>
						<td colspan="3"><input type="text" size="59" id="oxygenSaturation" name="oxygenSaturation"></td>
					</tr>
					<tr>
						<th>증상기록</th>
						<td colspan="3"><textarea rows="10" cols="56" id="symptom" name="symptom"></textarea></td>
					</tr>
				</table>
			</div><br>
			<input type="submit" value="등록">&nbsp;&nbsp;
			<input type="reset" value="취소">&nbsp;&nbsp;
			<input type="button" value="목록" onclick="location.href='recordList.do'">
		</form>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="js/record.js"></script> 
</body>
</html>