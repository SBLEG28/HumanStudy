$(document)
.on("click", "#btnlogin", function() {
	let id = $('#uid').val();
	let pw = $('#pw').val();
	
	if (NullCheck(id)) {
			alert("아이디를 입력하지 않았습니다.");
			return false;
		}

	if (NullCheck(pw)) {
		alert("비밀번호를 입력하지 않았습니다.");
		return false;
	}
	
	$.ajaxSetup({async:false});
	$.post( "/edu/userinfo", { id: id }, function(jqXHR) {
			if(jqXHR["pwd"].length == 0){
			    alert("해당 아이디가 존재하지 않습니다.");
			    return false;	
			}
			
			if(pw != jqXHR["pwd"]){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			} else{
				$.ajax({
					url: '/edu/lgin',  // 요청 할 주소
					async: false,
					type: 'POST', 		// GET, PUT
					dataType: 'text',
					data: {
						id: id
					},
					complete: function() {
						location.replace('/edu?uid='+ id);
					}
				});
			}
		}, 'json' /* xml, text, script, html */)
		.fail(function(jqXHR) {
		    alert("해당 아이디가 존재하지 않습니다.");
		    return false;
		});
});