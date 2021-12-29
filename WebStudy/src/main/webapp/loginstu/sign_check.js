document.write("<script src='Common.js'></script>");

$(document)
.on("submit", "#frmSign", function() {
		let name = $('#name');
		let gender = $('#gender');
		let id = $('#userid');
		let psw1 = $('#psw1');
		let psw2 = $('#psw2');
		let inter = $('#interest');

	   	if (NullCheck(name)) {
			alert("실명을 입력하지 않았습니다.");
			history.back();
			return false;
		}

		if (NullCheck(gender)) {
			alert("성별을 입력하지 않았습니다.");
			history.back();
			return false;
		}
	
		if (NullCheck(id)) {
			alert("아이디를 입력하지 않았습니다.");
			history.back();
			return false;
		}

		if (NullCheck(psw1)) {
			alert("비밀번호를 입력하지 않았습니다.");
			history.back();
			return false;
		}

		if (NullCheck(psw2)) {
			alert("비밀번호 확인을 입력하지 않았습니다.");
			history.back();
			return false;
		}

		if (NullCheck(inter)) {
			alert("관심분야를 한개 이상 선택하지 않았습니다.");
			history.back();
			return false;
		}
		
		if ((!NullCheck(psw2)) && (!psw1.equals(psw2))) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			history.back();
			return false;
		} else {
			return true;
			//document.location = "login.jsp";
		}
	});