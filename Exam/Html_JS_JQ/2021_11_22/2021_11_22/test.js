let arMenu = [
    { name: "토피 넛 콜드 브루", price: 3600 },
    { name: "나이트로 바닐라 크림", price: 7200 },
    { name: "나이트로 콜드 브루", price: 6300 },
    { name: "돌체 콜드 브루", price: 4800 },
    { name: "아이스 커피", price: 3500 },
    { name: "오늘의 커피", price: 3500 },
    { name: "아이스 토피 넛 라떼", price: 4600 },
    { name: "토피 넛 라떼", price: 5200 },
    { name: "에스프레소 콘 파나", price: 2900 },
    { name: "에스프레소 마키아또", price: 3800 },
    { name: "카페 아메리카노", price: 4300 }
];

$(document)
    .ready(function () {
        SetMenu("#selMenu");

        manu  = $("#menuname");
        count = $("#count");
        price = $("#price");
    })
    // 메뉴 선택
    .on("click", "#selMenu", function () {
        manu.val($(this).val());
        count.val(1);
        price.val(RtnNumber($("#selMenu option:checked").text()));
    })
    // 수량 변환
    .on("change", "#count", function () {
        price.val(RtnNumber($("#selMenu option:checked").text())*$(this).val());
    })
    // 메뉴 비우기
    .on("click", "#btnReset", function () {
        SelReset(1);
    })
    // 메뉴추가
    .on("click", "#btnAdd", function () {
        let order = $("#selOrder");

        // 메뉴가 있으면 추가, 없으면 갯수와 금액을 변경
        let idx = ExsitOpt("#selOrder", manu.val());
        if(idx == -1){
            let strMenu = `<option value="${manu.val()}">${manu.val()} x${count.val()} ${price.val()}원</option>`;
            order.append(strMenu);
        }
        else
        {
            let temp = $(`#selOrder option:eq(${idx})`).text().split(" ");

            let cnt = parseInt(RtnNumber(temp[temp.length-2])) + parseInt(count.val());
            let prc = parseInt(RtnNumber(temp[temp.length-1])) + parseInt(price.val());

            $(`#selOrder option:eq(${idx})`).replaceWith(`<option value="${manu.val()}">${manu.val()} x${cnt} ${prc}원</option>`);
        }

        let sum = 0;
        $("#selOrder option").each(function () {
            sum += parseInt(RtnNumber($(this).text()));
        });

        $("#total").val(sum);
        $("#btnReset").trigger("click");
    })
    // 주문 목록_취소
    .on("click", "#btnCancel", function () {
        SelReset(2);
    })
    // 주문 목록_완료
    .on("click", "#btnDone", function () {
        phone = ($("#mobile").val() == "" ? "-" : $("#mobile").val());

        strMenu = `<option value="${phone}">${phone} ${$("#total").val()}원</option>`;
        $("#selSales").append(strMenu);

        $("#btnCancel").trigger("click");
    })

    // 메뉴 관리_클릭
    .on("click", "#btnMenu", function(){
        $("#dgMenu").dialog({
            width:500,
            open:function(){
                SetMenu("#selMenu1");
            },
            close:function(){
                SetMenu("#selMenu");
                SelReset(3);
            }
        });
    })
    // 메뉴 관리_선택
    .on("click", "#selMenu1", function(){
        $("#_menuname").val($(this).val());
        $("#_price").val(RtnNumber($("#selMenu1 option:checked").text()));
    })
    // 메뉴 관리_추가
    .on("click", "#btnPlus", function(){
        let manu  = $("#_menuname").val();
        let price = $("#_price").val()

        // 메뉴가 있으면 수정, 없으면 추가
        let idx = $("#selMenu1 option:selected").index();
        if(idx == -1)
        {
            let obj = {name : "", price : 0};
            obj.name = manu;
            obj.price = price;
            
            arMenu.push(obj);
        }
        else{
            idx = ExsitOpt("#selMenu1", $("#selMenu1 option:selected").val());

            arMenu[idx].name = manu;
            arMenu[idx].price = price;
        }

        SetMenu("#selMenu1");
        SelReset(3);
    })
    // 메뉴 삭제
    .on("click", "#btnMinus", function(){
        let idx = ExsitOpt("#selMenu1", $("#_menuname").val());
        arMenu.splice(idx, 1);

        SetMenu("#selMenu1");
        SelReset(3);
    });

function ExsitOpt(elem, value){
    return $(`${elem} option[value="${value}"]`).index()
}

function SetMenu(id){
    $(id + " option").remove();

    $.each(arMenu, function (ndx, obj) {
        strMenu = `<option value="${obj['name']}">${obj['name']} ${obj['price']}원</option>`;
        $(id).append(strMenu);
    });
}

function SelReset(display) {
    switch (display) {
        case 1:
            manu.val(null); count.val(null); price.val(null);
            break;
        case 2:
            $("#selOrder option").remove();
            $("#mobile").val(null);
            $("#total").val(null);
            break;
        case 3:
            $("#_menuname").val(null);
            $("#_price").val(null);
            break;
    }
}

function RtnNumber(str) {
    let temp = str.split(" ");
    let regex = /[^0-9]/g;

    return temp[temp.length - 1].replace(regex, "");
}
