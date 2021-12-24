document.write("<script src='Common.js'></script>");

$(document)
.ready(function(){
    $("#male, #politics").prop("checked", true);
})
.on("click", "#btnCreate",function(){
    let uid  = BringValue('useid');
    let psw1 = BringValue('password1');
    let psw2 = BringValue('password2');
    let name = BringValue('name');
    let btd  = BringValue('birthday');
    let grn  = "";
    let interest = "";
    
    //let grn_l= Bringlength('gender');
    // for (var i = 0; i < grn_l.length; i++) {
    //     if (grn_l[i].checked == true) {
    //         grn = grn_l[i].value;
    //         break;
    //     }
    // }

    $("input:radio[name=gender]").each(function(){
        if($(this).prop("checked") == true)
            grn = $(this).val();
    });

    console.log(grn);
    console.log("지역 : val " + $("#selRegion").val());
    console.log("지역 : txt " + $("#selRegion option:selected").text());
    
    $("input:checkbox[name=interest]").each(function(){
        if($(this).prop("checked") == true)
            interest += $(this).val() + " ";
    });

    console.log("관심분야 : " + interest);

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
});
