document.write("<script src='Common.js'></script>");

$(document)
.on("submit", "#frmLogin", function() {
	let id = $('#uid').val();
	let pw = $('#pw').val();

	if (NullCheck(id)) {
		alert("아이디를 입력하지 않았습니다.");
		history.back();
		return false;
	} else {
		if (id != "123") {
			alert("해당 아이디가 존재하지 않습니다.");
			history.back();
			return false;
		}
	}

	if (NullCheck(pw)) {
		alert("비밀번호를 입력하지 않았습니다.");
		history.back();
		return false;
	} else {
		if (pw != "123") {
			alert("비밀번호가 틀립니다.");
			history.back();
			return false;
		}
		else {
			return true;
			//document.location = "home.jsp";
		}
	}
});