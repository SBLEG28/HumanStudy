document.write("<script src='Common.js'></script>");

$(document)
.on("click", "#btnLogin", function(){
    console.log("[" + new Date + "] Login");

    let uid = BringValue('userid');
    let psw = BringValue('password');

    console.log("uid = " + uid);
    console.log("psw = " + psw);

    if(uid == "qwert" && psw == "12345")
        MovePage(1);
    else if(uid != "qwert")
        alert("id를 확인하시오.");
    else
        alert("password를 확인하시오.");
});