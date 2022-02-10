/**
 * 
 */
function noticeDelete() {
	let noticeId = $("#pkid").val();
	console.log(noticeId);
	
	$.ajax({
		url: "noticeDelete.do",                 // url: .do, 폴더명/파일명(jsp)
		type: "post",					 		// get, post 방식
		data: { noticeId: noticeId }, // 넘겨줄 값 [  넘겨줄 매개변수 변수명:값   ]
		dataType: "text",
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			let temp = data.split(",");
			console.log(data, temp);

			if (temp[0] != "0") {
				alert("공지사항 게시글을 삭제할 수 없습니다.");
				return false;

			} else {
				location.href="noticeList.do";
			}
		},
		error: function(jqXHR) { console.log("error"); }
	});

	return false;
}