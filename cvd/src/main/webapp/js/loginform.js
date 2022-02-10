
$(document)
	.ready(function() {


	})
	.on("submit", "btnLogin", function() {

	})
	;

function login_Exce() {
	let phoneNumber = $("#phoneNumber").val();
	let password = $("#password").val();

	if (phoneNumber == "") {
		alert("휴대폰번호를 입력해주세요.");
		return false;
	}

	if (password == "") {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	else {
		$.ajax({
			url: "login.do",                 // url: .do, 폴더명/파일명(jsp)
			type: "post",					 // get, post 방식
			data: { phoneNumber: phoneNumber, password: password }, // 넘겨줄 값 [  넘겨줄 매개변수 변수명:값   ]
			dataType: "text",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success: function(data) {
				let temp = data.split(",");			
				console.log(data, temp);
				
				if (temp[0] != "0") {	
					alert("휴대전화와 비밀번호를 확인하세요.");
					return false;
					
				} else {
					alert(temp[2] + "님이 로그인하였습니다.");
					location.href = "main.do" 
				}
			},
			error: function(jqXHR) { console.log("error"); }
		});

		return false;
	}
}

function login() {
	let x = document.getElementById("login");
	let y = document.getElementById("register");
	let z = document.getElementById("btn");

	x.style.left = "50px";
	y.style.left = "450px";
	z.style.left = "0";
}

function register() {
	let x = document.getElementById("login");
	let y = document.getElementById("register");
	let z = document.getElementById("btn");

	x.style.left = "-400px";
	y.style.left = "50px";
	z.style.left = "110px";
}