
$(document)
    .ready(function () {
        serial = 0;
    })
    .on("click", "td", function () {
        if ($(this).text() == "") {
            $(this).css("background-color", "yellow").text(++serial);
        }
    });

// $("table tr:eq(3)").css("background-color", "green");
// $("table tr:lt(2)").css("background-color", "red");
// $("table:eq(1) tr:gt(3)").css("background-color", "blue");
// $("table tr:even").css("background-color", "pink");
// $("table tr:odd").css("background-color", "cyan");

// $(document)
// .ready(function(){})
// .on("click", "#btnShow", function(){
//     $("div").show();
// })
// .on("click", "#btnHide", function(){
//     $("div").hide();
// })
// .on("click", "#btnFadeIn", function(){
//     $("div").fadeIn(3000);
// })
// .on("click", "#btnFadeOut", function(){
//     $("div").fadeOut(3000);
// })
// .on("click", "#btnAddClass", function(){
//     $("div").addClass("bgColor");
//     console.log($("div").hasClass("bgColor"));
// })
// .on("click", "#btnRmvClass", function(){
//     $("div").css("background-color", "");
//     $("div").removeClass("bgColor");
// })

// .on("click", "#btnTgShow", function(){
//     $("div").toggle();
// })
// .on("click", "#btnTgClass", function(){
//     $("div").fadeToggle();
// })
// .on("click", "#btnTgFadeIn", function(){
//     $("div").toggleClass("bgColor");
// });