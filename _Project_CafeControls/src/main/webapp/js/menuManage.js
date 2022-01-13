/**
 * 
 */
 
$(document)
.on("click", "#selMenu option:checked", function(){
	$("#_code").val($(this).attr("data-code"));
    $("#_name").val($(this).attr("data-name"));
    $("#_price").val($(this).attr("data-price"));
    $("#selCtg").val($(this).attr("data-ctgcd")).prop("selected", true);
})

.on("click", "#btnInsert", function() {

	$.get('insert', { move : "menu",
					  code : $("#_code").val(),
					  name : $("#_name").val(),
					  price : $("#_price").val(),
					  ctg : $("#selCtg option:selected").val(),
	 				}, function(txt) {
		
		SetDiaMenu();
		resetmanege();
	}, 'text');
})

.on("click", "#btnUpdate", function() {
	console.log($("#selCtg option:selected").val());
	
	$.get('update', { oldcode : $("#selMenu option:checked").attr("data-code"),
					  newcode : $("#_code").val(),
					  name : $("#_name").val(),
					  price : $("#_price").val(),
					  ctg : $("#selCtg option:selected").val(),
	 				}, function(txt) {
		SetDiaMenu();
		resetmanege();
	}, 'text');
})

.on("click", "#btnDelete", function() {
	$.get('delete', {code : $("#_code").val() }, function(txt) {
		SetDiaMenu();
		resetmanege();
	}, 'text');
})
;

function resetmanege(){
	$("#_code").val("");
    $("#_name").val("");
    $("#_price").val("");
    $("#selMenu option:selected").prop("selected", false);
    $("#selCtg option:eq(0)").prop("selected", true);
}