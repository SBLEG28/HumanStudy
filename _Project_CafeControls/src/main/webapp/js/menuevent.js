/**
 * 
 */
var cnt = 0;

$(document)
	.on("click", "#tabs li a", function() {
		/*
		$('#tabs ul li').removeClass('active');
		$(this).parent().addClass('active');
		var currentTab = $(this).attr('href');
		$('#tabs div').hide();
		$(currentTab).show();
		return false;
		*/
	})
	.on("click", "#menu div div", function() {
		// 클릭 데이터 찾기
		$("#dis_ord").css("display", "inline");

		console.log($(this).attr("data-code") + ".PNG");
		
		jQuery('#ord_img').attr("src", "img/" + $(this).attr("data-code") + ".PNG");
		$("#ord_name").text($(this).attr("data-name"));
		$("#ord_name").val($(this).attr("data-code"));
		$("#ord_price").text(rtnComma(rtnNumber($(this).attr("data-price")))+"원");

		$("#quantity").val(1);
		$("#quantity").text("1");

		sumPrice();
	})

	// 메뉴 관리_클릭
	.on("click", "#btnManage", function() {
		$("#dgMenu").dialog({
			width: 620,
			open: function() {
				SetDiaMenu();
			},
			close: function() {
				loadMenu();
				resetord();
			}
		});
	})
	
	.on("click", "#btnSummery", function() {
		console.log("summery");
		
		$("#dgSummery").dialog({
			width: 900,
			open: function() {
				SetDiaSum();
			}
		});
	})
	
	.on("click", "#btnReset", function() {
		resetord();
	})

	.on("click", "#btnAdd", function() {
		let name = "li" + cnt;

		let html = "<div class='order' id='" + name + "'>"
			+ "<p data-code='" + $("#ord_name").val() + "'>" + $("#ord_name").text() + "</p>"
			+ "<p>" + rtnComma(rtnNumber($("#sumprice").text())) + "원</p>"
			+ "<p>" + $("#quantity").val() + "잔</p>"
			+ "<button id='btncancel'>주문취소</button></div>";

		$("#shoplist").append(html);
		resetord();
		cnt += 1;
	})

	.on("click", "#mius", function() {
		let parm = $('#quantity').val();

		if (parm == 1) {
			alert("수량을 1개 미만으로 선택할 수 없습니다.");
		} else {
			parm -= 1;

			$('#quantity').val(parm);
			$("#quantity").text(String(parm));
		}

		sumPrice();
	})

	.on("click", "#plus", function() {
		let parm = parseInt($('#quantity').val());
		parm += 1

		$('#quantity').val(parm);
		$("#quantity").text(String(parm));

		sumPrice();
	})
	;

function sumPrice() {
	$("#sumprice").empty();
	$("#sumprice").append("상품금액 : " + rtnComma(rtnNumber($("#ord_price").text()) * $('#quantity').val()) + "원");
}

function resetord() {
	jQuery('#ord_img').attr("src", "");
	$("#ord_name").text("");
	$("#ord_name").val("");
	$("#ord_price").text("");

	$("#quantity").text("");

	$("#dis_ord").css("display", "none");
}