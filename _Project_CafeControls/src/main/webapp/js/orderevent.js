/**
 * 
 */

$(document)
	.on("click", "#btnallreset", function() {
		$("#shoplist").empty();
	})
	.on("click", "#btncancel", function() {
		//$(choose).detach();
		$(this).parent().detach();
	})
	.on("click", "#btnorder", function() {
		let phone = rtnregExp($('#phone').val());
		
		if(nullCheck(phone))
		{
			alert("모바일 적립 번호를 입력하지 않았습니다.");
			return false;
		} else{
			if(phone.length < 10){
				alert("입력된 모바일 번호가 올바르지 않습니다. 양식에 맞춰 작성해주세요.");
				return false;
			}
		}
		
		//디비에 넣기
		allorder();

		//$("#shoplist").empty();
	})
	;

function allorder() {
	let sum = 0;

	let obj = { menu: "", total: 0, qty: 0 };
	$('#shoplist div p').each(function(index, item) {
		console.log(item);

		if (index % 3 == 0) {
			// 메뉴 번호
			obj.menu = $(item).attr("data-code");
		} else if (index % 3 == 1) {
			// 메뉴 가격
			obj.total = rtnNumber($(item).text());
		} else if (index % 3 == 2) {
			// 메뉴 수량
			obj.qty = rtnNumber($(item).text());
			
			console.log($("#phone").val(), obj);
	
			$.get('insert', {
					move : "sales",
					mobile : rtnregExp($('#phone').val()),
					menu : obj.menu,
					qty : rtnNumber(obj.total),
					total : rtnNumber(obj.qty)
				}, function(txt) {
					console.log("insert");
					loadSales();
					$('#phone').val("");
				}, 'text');
		}
	});
	
	$("#shoplist").empty();
}