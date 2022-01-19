$(document)
.ready(function() {
	loadMenuCTG();
	loadMenu();
	loadSales();
	
	$("#dis_ord").attr("style", "display:none");
	return false;
})

function loadMenu(){
	$.get('select', {move : "menu"}, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "";

		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');

			html += "<div data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2] + "' data-ctg='" + field[3] + "'>"
				  + "<div><img class='picture' src=img/" + field[0] + ".PNG></div>"
				  + "<div>" + field[1] + "</div>"
				  + "<div>" + rtnComma(rtnNumber(field[2])) + "원</div> </div>";
		}
		
		$('#menu').append(html);
	}, 'text');
}

function loadMenuCTG() {
	$('#tabs').empty();

	$.get('select', {move : "menu_ctg"}, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "";

		html = "<li><a class='current' href='#' data-value=''>전체보기</a></li>"

		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');
			html += "<li><a href='#' data-value='"+ field[0] + "'>" + field[1] + "</a></li>"
		}

		$('#tabs').append(html);
	}, 'text');
}

function loadSales() {
	$('#salse').empty();

	$.get('select', {move : "sales"}, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "", temp = "";
		let qty=0, sum=0;
		
		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');
			
			if(i != 0 && field[0] != "" && temp == ""){
				qty += rtnNumber(field[2]);
				sum += rtnNumber(field[3]);
				
				html += "<div></div><div></div>"
			     	  + "<div><p style='font-weight: bold;'>" + rtnComma(qty) + "</p></div>"
			     	  + "<div><p style='font-weight: bold;'>" + rtnComma(sum) + "</p></div>";
			     	  
			    qty = 0;
			    sum = 0;
			}
			
			html += "<div><p>"+ field[0] + "</p></div>"
				  + "<div><p>"+ field[1] + "</p></div>"
				  + "<div><p>"+ field[2] + "</p></div>"
				  + "<div><p>"+ field[3] + "</p></div>";

			qty += rtnNumber(field[2]);
			sum += rtnNumber(field[3]);
			temp = field[0];
			
			if (i == rec.length-1){
				html += "<div></div><div></div>"
			     	  + "<div><p style='font-weight: bold;'>" + rtnComma(qty) + "</p></div>"
			     	  + "<div><p style='font-weight: bold;'>" + rtnComma(sum) + "</p></div>";
			
			}
		}
		
		$('#salse').append(html);
	}, 'text');
}

function SetDiaSum(){
	$("#_dgmenu").empty();
	$("#_dgcus").empty();
	
	$.get('select', { move: "manu_sales" }, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "";
		
		console.log("menu", rec);
		
		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');

			html += "<div><p>"+ field[0] + "</p></div>"
				  //+ "<div><p>"+ field[1] + "</p></div>"
				  + "<div><p>"+ field[1] + "잔</p></div>"
				  + "<div><p>"+ rtnComma(rtnNumber(field[2])) + "원</p></div>";
		}

		$("#_dgmenu").append(html);
	}, 'text');
	
	$.get('select', { move: "cus_sales" }, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "";

		console.log("cus", rec);
		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');

			html += "<div><p>"+ field[0] + "</p></div>"
				  //+ "<div><p>"+ field[1] + "</p></div>"
				  + "<div><p>"+ field[1] + "잔</p></div>"
				  + "<div><p>"+ rtnComma(rtnNumber(field[2])) + "원</p></div>";
		}
				
		$("#_dgcus").append(html);
	}, 'text');
}

function SetDiaMenu() {
	$("#selMenu option").remove();
	$("#selCtg option").remove();

	$.get('select', { move: "menu" }, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "";

		console.log("menu", rec);
		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');

			html += "<option data-code='"  + field[0] + "'"
	   	 	      + "        data-name='"  + field[1] + "'"
				  + "        data-price='" + field[2] + "'"
				  + "        data-ctgcd='" + field[3] + "'"
				  + "        data-ctgnm='" + field[4] + "'"
				  + ">" + field[1] + "</option>";
		}

		$("#selMenu").append(html);
	}, 'text');

	$.get('select', { move: "menu_ctg" }, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "";
		
		console.log("ctg", rec);
		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');
			html += "<option value='" 	   + field[0] + "'"
				  + "        data-ctgnm='" + field[1] + "'"
				  + ">" + field[1] + "</option>";

		}

		$('#selCtg').append(html);
	}, 'text');
	
	resetmanege();
}
