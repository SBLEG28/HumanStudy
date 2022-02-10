/**
 * 
 */
$(document)
	.ready(function() {
		let today = new Date();
		let date = today.getFullYear() + "-" + ('0' + (today.getMonth() + 1)).slice(-2) + "-" + ('0' + today.getDate()).slice(-2) + " " + ('0' + today.getHours()).slice(-2) + ":" + ('0' + today.getMinutes()).slice(-2) + ":" + ('0' + today.getSeconds()).slice(-2);

		$("#recordTime").val(date);
	})
	;

function allChk(obj) {
	var chkObj = document.getElementsByName("rowcheck");
	var rowCnt = chkObj.length - 1;
	var check = obj.checked;
	if (check) {
		for (var i = 0; i <= rowCnt; i++) {
			if (chkObj[i].type == "checkbox")
				chkObj[i].checked = true;
		}
	} else {
		for (var i = 0; i <= rowCnt; i++) {
			if (chkObj[i].type == "checkbox") {
				chkObj[i].checked = false;
			}
		}
	}
}



//﻿2. 체크박스 선택된 것 삭제 처리 (N개) 
function recordDelete() {
	let userid ="";
	var memberChk = document.getElementsByName("rowcheck");
	
	console.log("실행");
	
	var chked = false;
	var indexid = false;
	for (i = 0; i < memberChk.length; i++) {
		if (memberChk[i].checked) {
			if (indexid) {
				userid = userid + '/';
			}
			userid = userid + memberChk[i].value;
			indexid = true;
		}
	}
	if (!indexid) {
		alert("삭제할 사용자를 체크해 주세요");
		return;
	}
	
	var agree = confirm("삭제 하시겠습니까?");
	if (agree) {
		console.log(userid);
		
		$.ajax({
			url: "recordDelete.do",                 // url: .do, 폴더명/파일명(jsp)
			type: "post",					 		// get, post 방식
			data: { temparam : userid }, // 넘겨줄 값 [  넘겨줄 매개변수 변수명:값   ]
			dataType: "text",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success: function(data) {
				let temp = data.split(",");
				console.log(data, temp);
	
				if (temp[0] != "0") {
					alert("회원을 삭제할 수 없습니다.");
					return false;
	
				} else {
					location.href = "recordList.do";
				}
			},
			error: function(jqXHR) { console.log("error"); }
		});
	}
}
