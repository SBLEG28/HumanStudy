$(document)
.ready(function() {
	loadMenuCTG();
	loadMenu();
	
	$("#dis_ord").css("display", "none");
	
	/*
	$(function() {
		var indicator = $('#indicator'), indicatorHalfWidth = indicator.width() / 2, lis = $('#tabs').children('li');
				
		$("#tabs").tabs("#content table", {
					effect = 'fade',
					fadeOutSpeed = 0,
					fadeInSpeed = 400,
					onBeforeClick = function(event, index) {
						var li = lis.eq(index), newPos = li.position().left
								+ (li.width() / 2) - indicatorHalfWidth;
						indicator.stop(true).animate({
							left : newPos
						}, 600, 'easeInOutExpo');
					}
				});
	});
	*/
	
	return false;
})

function loadMenu(){
	$.get('select', {move : "menu"}, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html = "", temp ="";

		let td0, td1, td2;
		
		html += "<table>";
		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');

			td0 += "<td class='picture' data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2]
				+ "'><img class='picture' src=img/" + field[0] + ".PNG></td>";
			td1 += "<td class='name' data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2]
			    + ">" + field[1] + "</td>";
			td2 += "<td class='price' data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2]
			    + ">" + field[2] + "</td>";
				    
			if(i % 5 == 0){
				if (i != 0){
					html += "<tr>" + td0 + "</tr>" 
					      + "<tr>" + td1 + "</tr>" 
					      + "<tr>" + td2 + "</tr>";
				}
				
				td0 = "<td class='picture' data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2]
					+ "'><img class='picture' src=img/" + field[0] + ".PNG></td>";
				td1 = "<td class='name' data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2]
				    + ">" + field[1] + "</td>";
				td2 = "<td class='price' data-code='" + field[0] + "' data-name='"+ field[1] + "' data-price='" + field[2]
				    + ">" + field[2] + "</td>";
			}
		}
		
		html += "</tr></table>";

		$('#content').append(html);
	}, 'text');
}

function loadMenuCTG() {
	$('#tabs').empty();

	$.get('select', {move : "menu_ctg"}, function(txt) {
		if (txt == "")
			return false;

		let rec = txt.split(';');
		let field, html;

		html = "<li><a class='current' href='#' data-value='*'>전체보기</a></li>"

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
		let field, html;

		for (i = 0; i < rec.length; i++) {
			field = rec[i].split('/');
			html += "<div><p>"+ field[0] + "</p></div>"
				  + "<div><p>"+ field[1] + "</p></div>"
				  + "<div><p>"+ field[2] + "</p></div>"
				  + "<div><p>"+ field[3] + "</p></div>";
			
		}

		$('#salse').append(html);
	}, 'text');
}