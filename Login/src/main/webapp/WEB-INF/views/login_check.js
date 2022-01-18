document.write("<script src='Common.js'></script>");

$(document)
.on("submit", "#frmLogin", function() {
	let rcd = $('#ROOMCODE').val();
	let nm = $('#NAME').val();
	let tp = $('#TYPE').val();
	let hmy = $('#HOWMANY').val();
	let hmh = $('#HOWMUCH').val();
	
	if (NullCheck(rcd)) {
		return 1;
	} else {
		if ((!NullCheck(rcd)) && NullCheck(nm) && NullCheck(tp) && NullCheck(hmy) && NullCheck(hmh)) {
			return 2;
		}
		else if((!NullCheck(rcd)) && (!NullCheck(nm)) && (!NullCheck(tp)) && 
				(!NullCheck(hmy)) && (!NullCheck(hmh))){
			return 3
		}
		else{

		}
	}

});