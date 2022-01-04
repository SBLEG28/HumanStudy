document.write("<script src='Common.js'></script>");

$(document)
.on("submit", "#frmSign", function() {
		let name = $('#name').val();
		let gender = $('input[name="gender"]:checked').val()
		let id = $('#userid').val();
		let psw1 = $('#psw1').val();
		let psw2 = $('#psw2').val();
		let inter = $('input[name="interest"]:checked').val();
		
	   	if (NullCheck(name)) {
			alert("실명을 입력하지 않았습니다.");
			return false;
		}

		if (NullCheck(gender)) {
			alert("성별을 입력하지 않았습니다.");
			return false;
		}
	
		if (NullCheck(id)) {
			alert("아이디를 입력하지 않았습니다.");
			return false;
		}

		if (NullCheck(psw1)) {
			alert("비밀번호를 입력하지 않았습니다.");
			return false;
		}

		if (NullCheck(psw2)) {
			alert("비밀번호 확인을 입력하지 않았습니다.");
			return false;
		}

		if (NullCheck(inter)) {
			alert("관심분야를 한개 이상 선택하지 않았습니다.");
			return false;
		}
		
		if (psw1 != psw2) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			return false;
		} else {
			return true;
		}
	});