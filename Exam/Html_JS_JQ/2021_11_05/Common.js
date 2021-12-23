var pg_login = "login.html";
var pg_index = "index.html";

function MovePage(num) {
    switch (num) {
        case 1:
            document.location = pg_index;
            break;
        case 2:
            document.location = pg_login;
            break;
    }
}

function NullCheck(str) {
    if (typeof str == "undefined" || str == null || str == "") {
        return true;
    }

    return false;
}

function BringValue(id) {
    if (document.getElementsByName(id).value == "undefined" || 
        document.getElementsByName(id).value == null        || 
        document.getElementsByName(id).value == "")
        return document.getElementById(id).value;
    else
        return document.getElementsByName(id).value;
}

function Bringlength(id) {
    if (document.getElementsByName(id).length == "undefined" || 
        document.getElementsByName(id).length == null        || 
        document.getElementsByName(id).length == "")
        return document.getElementById(id);
    else
        return document.getElementsByName(id);
}
