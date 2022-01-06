<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "ora_user";
	String passcode = "human123";
	String sql = "select * from room order by roomcode";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 정보 관리</title>
<div class="header">
	<h1>무지개떡 팬션</h1>
</div>
</head>

<style>
input {
	width: 98%;
}

.header {
	padding: 0px;
	text-align: center;
}

.TableStyle {
	width: 100%;
	border-collapse: collapse;
	border: 2px solid #038C5A;
	margin: 0 auto;
	border-collapse: collapse;
}

.TableStyle th {
	height: 50px;
	border-collapse: collapse;
	border: 2px solid #038C5A;
	align-content: center;
	text-align: center;
	font-size: 20px;
}

.TableStyle thead {
	background-color: #FFB6B9;
}

.TableStyle tbody {
	background-color: #FFF7F7;
}

.TableStyle tr {
	height: 20px;
	align-content: center;
}

.td_Txt {
	border-color: rgb(169, 172, 158);
	border: 1px solid black;
	text-align: center;
}

.td_Num {
	border-color: rgb(169, 172, 158);
	border: 1px solid black;
	text-align: right;
}

.input_tb {
	margin-left: 10px;
}

.input_tb thead {
	margin-bottom: 10px;
}

.input_tb tbody tr {
	align-content: center;
	border-color: rgb(169, 172, 158);
	border: 1px solid black;
	text-align: right;
}

.input_tb tbody td {
	font-size: 15px;
	text-align: center;
	border: 1px solid black;
}

.leftfloat {
	float: left;
	width: 40%
}

.rightfloat {
	float: left;
	width: 60%
}

.half {
	float: right;
	width: 50%;
}

.h1_1 {
	background-color: #FFF587;
	margin-right: 10px;
}

.h1_2 {
	background-color: #AEBFB1;
	text-align: center;
}
</style>

<body>
	<div class="leftfloat">
		<table id=tblRoom class="TableStyle">

			<!-- 객실목록 -->
			<thead>
				<div class="header">
					<h1 class="h1_1">객실 정보</h1>
				</div>
				<tr>
					<th>객실번호</th>
					<th>객실명</th>
					<th>객실종류</th>
					<th>숙박가능인원</th>
					<th>숙박비</th>
			</thead>
			<tbody>

			</tbody>
		</table>
	</div>

	<div class="rightfloat">
		<table class="input_tb">
			<thead>
				<tr class="header">
					<h1 class="h1_2">객실 정보 관리</h1>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>객실번호</td>
					<td><input type=number id=roomcode></td>
				</tr>
				<tr>
					<td>객실명</td>
					<td><input type=text id=name></td>
				</tr>
				<tr>
					<td>객실종류</td>
					<td><input type=number id=type></td>
				</tr>
				<tr>
					<td>숙박가능인원</td>
					<td><input type=number id=howmany></td>
				</tr>
				<tr>
					<td>숙박비용</td>
					<td><input type=number id=howmuch></td>
				</tr>
				<tr>
					<td colspan=2 align=center><input type=button id='btnGo'
						value='전송'></td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td colspan=2><h3>1. 객실 추가</h3></td>
				</tr>
				<tr>
					<td colspan=2>객실번호를 넣지 않고 그 외 정보(객실명, 객실종류, 숙박가능인원, 숙박비용)을
						입력하게 되면 객실을 추가합니다.</td>
				</tr>
				<tr>
					<td colspan=2><h3>2. 객실 삭제</h3></td>
				</tr>
				<tr>
					<td colspan=2>객실번호만을 입력하게 되면 작성하신 객실번호의 객실 정보를 삭제합니다.</td>
				</tr>
				<tr>
					<td colspan=2><h3>3. 객실 정보 변경</h3></td>
				</tr>
				<tr>
					<td colspan=2>모든 정보를 입력하게 되면 객실번호에 있는 객실 정보를 업데이트 합니다.</td>
				</tr>
			</tfoot>

		</table>
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
	$(document).ready(function() {
		loadRoom();
		return false;
	}).on(
			'click',
			'#btnGo',
			function() {
				let operation = '';
				if ($('#roomcode').val() == '') {
					if ($('#name').val() != '' && $('#type').val() != ''
							&& $('#howmany').val() != ''
							&& $('#howmuch').val() != '') {
						operation = "insert";//insert
					} else {
						alert('입력값이 모두 채워지지 않았습니다.');
						return false;
					}
				} else {
					if ($('#name').val() != '' && $('#type').val() != ''
							&& $('#howmany').val() != ''
							&& $('#howmuch').val() != '') {
						operation = "update";//update
					} else {
						operation = "delete";//delete
					}
				}

				$.get(operation, {
					code : $('#roomcode').val(),
					name : $('#name').val(),
					type : $('#type').val(),
					howmany : $('#howmany').val(),
					howmuch : $('#howmuch').val()
				}, function(txt) {
					$('#name,#type,#howmany,#howmuch,#roomcode').val("");
					loadRoom();
				}, 'text');
				return false;
			})

	function loadRoom() {
		$('#tblRoom tbody').empty();
		$.get('select', {}, function(txt) {
			if (txt == "")
				return false;
			let rec = txt.split(';');
			for (i = 0; i < rec.length; i++) {
				let field = rec[i].split('/');
				let html = '<tr><td class="td_Txt">' + field[0]
						+ '</td><td class="td_Txt">' + field[1]
						+ '</td><td class="td_Txt">' + field[2]
						+ '</td><td class="td_Txt">' + field[3]
						+ '</td><td class="td_Num">' + field[4] + '</td></tr>';

				$('#tblRoom tbody').append(html);
			}
		}, 'text');
	}
</script>
</html>