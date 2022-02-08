$(document)
	.on("click", "#btnDone", function() {
		let name = $('#d_name').val();
		let price = $('#d_price').val();

		if (NullCheck(name)) {
			alert("메뉴명을 입력하지 않았습니다.");
			return false;
		}

		if (NullCheck(price)) {
			alert("가격을 입력하지 않았습니다.");
			return false;
		}

		$.ajaxSetup({ async: false });
		$.post("/edu/inst", { name: name, price: price }, function(jqXHR) {
			if (jqXHR != "ok") {
				alert("od에러 발생");
				return false;
			}
			else {
				Reset();
			}
		}, 'json' /* xml, text, script, html */);
	});

function Reset() {
	$('#d_name').val(null);
	$('#d_price').val(null);
}