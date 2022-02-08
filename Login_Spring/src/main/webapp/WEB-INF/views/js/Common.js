function nullCheck(str) {
    if (typeof str == "undefined" || str == null || str == "")
        return true;

    return false;
}

function rtn_number(str){
	var regex = /[^0-9]/g;

	return str.replace(regex, "");	
}