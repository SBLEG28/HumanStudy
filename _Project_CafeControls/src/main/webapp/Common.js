function rtnNumber(str) {
    let regex = /[^0-9]/g;

    return parseInt(str.toString().replace(regex, ""));
}

function nullCheck(str) {
    if (typeof str == "undefined" || str == null || str == "")
        return true;

    return false;
}