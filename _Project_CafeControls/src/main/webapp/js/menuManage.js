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
	
	if(exce_add()){
		$.get('insert', { move : "menu",
						  code : $("#_code").val(),
						  name : $("#_name").val(),
						  price : $("#_price").val(),
						  ctg : $("#selCtg option:selected").val(),
		 				}, function(txt) {
			
			SetDiaMenu();
			resetmanege();
		}, 'text');
	}
})

.on("click", "#btnUpdate", function() {
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
	let cnt = 0;
	
	$("#selMenu option").each(function(idx, val){
        if($("#_code").val() == $(this).val())
        	cnt++;
    });
    
    if(cnt == 0){
    	alert("입력하신 메뉴코드는 이미 존재하지 않습니다.");
    	return false;
	} else{
		$.get('delete', {code : $("#_code").val() }, function(txt) {
			SetDiaMenu();
			resetmanege();
		}, 'text');
	}
})
;

function exce_add(){
	$("#selMenu option").each(function(idx, val){
        if($("#_code").val() == $(this).attr("data-code")){
        	alert("입력하신 메뉴코드는 이미 사용하고 있습니다.");
        	return false;
        }
        
        if($("#_name").val() == $(this).text()){
        	alert("입력하신 메뉴명은이미 사용하고 있습니다.");
        	return false;
        }
    });
}

function resetmanege(){
	$("#_code").val("");
    $("#_name").val("");
    $("#_price").val("");
    $("#selMenu option:selected").prop("selected", false);
    $("#selCtg option:eq(0)").prop("selected", true);
}