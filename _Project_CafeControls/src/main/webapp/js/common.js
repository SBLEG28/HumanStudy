function rtnNumber(str) {
	let regex = /[^0-9]/g;
	
	if(nullCheck(str))
		return 0;
		
	return parseInt(str.toString().replace(regex, ""));
}

function rtnComma(parm) {
	return parm.toLocaleString('ko-KR');
}

function rtnregExp(str) {
	var reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
	
	if (reg.test(str)) 
		return str.replace(reg, "");
	
	return str;
}

function nullCheck(str) {
	str = str.trim();
	
	if (typeof str == "undefined" || str == null || str == "")
		return true;

	return false;
}
