document.write("<script src='Common.js'></script>");

$(document)
.on("submit", "#frmdb", function() {
	let rcd = $('#ROOMCODE').val();
	let nm = $('#NAME').val();
	let tp = $('#TYPE').val();
	let hmy = $('#HOWMANY').val();
	let hmh = $('#HOWMUCH').val();
	let theForm = document.frmSubmit;
	
	theForm.method="Get";
	
	if (NullCheck(rcd)) {
		theForm.action = "insert.jsp";
		theForm.submit(); 
		return true;
	} else {
		if ((!NullCheck(rcd)) && NullCheck(nm) && NullCheck(tp) && NullCheck(hmy) && NullCheck(hmh)) {
			theForm.action = "delete.jsp";
			theForm.submit(); 
			return true;
		}
		else if((!NullCheck(rcd)) && (!NullCheck(nm)) && (!NullCheck(tp)) && 
				(!NullCheck(hmy)) && (!NullCheck(hmh))){
			theForm.action = "update.jsp";
			theForm.submit(); 
			return true;
		}
		else{
			alert("실행 가능한 동작이 있지 않습니다.");
			return false;
		}
	}
});