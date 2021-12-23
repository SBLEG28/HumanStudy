document.write("<script src='Common.js'></script>");

function doLogin()
{
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
}

function dosignin()
{
    let uid  = BringValue('useid');
    let psw1 = BringValue('password1');
    let psw2 = BringValue('password2');
    let name = BringValue('name');
    let btd  = BringValue('birthday');
    let grn_l= Bringlength('gender');
    let grn;

    for (var i = 0; i < grn_l.length; i++) {
        if (grn_l[i].checked == true) {
            grn = grn_l[i].value;
            break;
        }
    }

    // console.log(uid);
    // console.log(psw1);
    // console.log(psw2);
    // console.log(name);
    // console.log(btd);
    // console.log(grn_l + " " + grn);

    if (NullCheck(uid))  { alert("id을 입력하시오."); return; }
    if (NullCheck(psw1)) { alert("password을 입력하시오."); return; }
    if (NullCheck(psw2)) { alert("password 확인을 입력하시오."); return; }
    if (NullCheck(name)) { alert("이름을 입력하시오."); return; }
    if (NullCheck(btd))  { alert("생년월일값을 입력하시오."); return; }
    if (NullCheck(grn))  { alert("성별을 입력하시오."); return; }

    if (psw1 != psw2) {
        alert("비밀번호와 비밀번호 확인값이 같지 않습니다.");
        return;
    }
    else
        MovePage(2);
}