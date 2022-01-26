$(document)
	.on("click", "#signon", function() {
		console.log("sign_check start");

		let name = $('#name').val();
		let gender = $('input[name="gender"]:checked').val()
		let id = $('#userid').val();
		let psw1 = $('#psw1').val();
		let psw2 = $('#psw2').val();
		let inter = [" ", " ", " "];

		let idx = 0;
		$('input[name="interest"]:checked').each(function() {
			inter[idx] = $(this).val();
			idx++;
		});

		if (NullCheck(name)) {
			alert("실명을 입력하지 않았습니다.");
			return false;
		} else {
			if (name.length >= 20) {
				alert("이름의 글자수를 초과하였습니다. 이름은 최대 20자까지 가능합니다.");
				return false;
			}
		}

		if (NullCheck(gender)) {
			alert("성별을 입력하지 않았습니다.");
			return false;
		}

		if (NullCheck(id)) {
			alert("아이디를 입력하지 않았습니다.");
			return false;
		} else {
			if (id.length >= 40) {
				alert("ID의 글자수를 초과하였습니다. ID는 최대 40자까지 가능합니다.");
				return false;
			}
		}

		if (NullCheck(psw1)) {
			alert("비밀번호를 입력하지 않았습니다.");
			return false;
		} else {
			if (psw1.length >= 40) {
				alert("패스워트의 글자수를 초과하였습니다. 패스워드는 최대 40자까지 가능합니다.");
				return false;
			}
		}

		if (NullCheck(psw2)) {
			alert("비밀번호 확인을 입력하지 않았습니다.");
			return false;
		}

		if (inter.length <= 0) {
			alert("관심분야를 한개 이상 선택하지 않았습니다.");
			return false;
		}

		if (psw1 != psw2) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			return false;
		} else {
			// 이미 존재하는 아이디인지 확인
			$.ajaxSetup({ async: false });
			$.post("/edu/userinfo", { id: id }, function(jqXHR) {
				if (id == jqXHR["id"]) {
					alert("이미 존재하는 아이디 입니다.");
					return false;
				} else{
					$.ajax({
						url: '/edu/signup',  // 요청 할 주소
						async: false,
						traditional: true,
						type: 'POST', 		// GET, PUT
						dataType: 'json',
						data: {
							id: id,
							psw: psw1,
							name: name,
							gender: gender,
							inter: inter
						},
						complete: function() {
							console.log("c");
							location.href = "/edu/login";
						}
					});
				}
			}, 'json');
		}
	})

	.on("click", "input[name='interest']", function() {
		if ($('input[name="interest"]:checked').length > 3) {
			$(this).is(":checked") == false;
			alert("관심분야는 최대 3개까지 선택 가능합니다.");
			return false;
		}
	})
	;
