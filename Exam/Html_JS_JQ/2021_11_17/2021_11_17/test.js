
/*
.val()
.text()
.html()
.
*/
$(document)
.on("click", "#dtnRowAdd", function(){
    let size = $("table tr:eq(0) td").length;

    let str = "<tr style = 'background-color: red;'>";
    for(i = 0; i < size; i++)
        str += "<td></td>";

    str += "</tr>";
    $("table").append(str);
})
.on("click", "#dtnRowDel", function(){
    $("table tr:last").remove();
})
.on("click", "#dtnColAdd", function(){
    $("table tr").append("<td></td>");
})
.on("click", "#dtnColDel", function(){
    let size = $("table tr").length;

    for(i = 0; i < size; i++){
        $(`table tr:eq(${i}) td:last`).remove();
    }
})
.on("click", "#dtnValue", function(){
    let rec_w = $("table tr:eq(0) td").length;
    let rec_h = $("table tr").length;
    let row = 0, col = 0;
    let flag = true;

    for(i = 1; i <= rec_w * rec_h; i++)
    {
        $(`table tr:eq(${row}) td:eq(${col})`).text(i);

        if(i % rec_w == 0)
        {
            row++;
            flag = !flag;
        }
        else
        {
            if(flag) col++;
            else     col--;
        }
    }
})
.on("click", "#dtnAfter", function(){
    $("table").after("After");
})
.on("click", "#dtnBefore", function(){
    $("table").before("Before");
})
.on("click", "#dtnPrepend", function(){
    $("table").prepend("<tr style = 'background-color: green;'><td></td><td></td><td></td><td></td></tr>");
})
.on("click", "#dtnRemove", function(){
    $("table tr:last").remove();
})
;

//$(document)
//.ready(function(){
    //$("div").html("<input type = 'text' id = 'txtName' value = 'Hello jQuery'>");
    //$("table tr:eq(0) td:eq(0)").css("background-color", "red");
    //$("table tr:eq(1) td:eq(0)").css("background-color", "yellow");

    // $("table tr:eq(0) td:eq(0)").text("1");
    // $("table tr:eq(0) td:eq(1)").text("2");
    // $("table tr:eq(0) td:eq(2)").text("3");

    // $("table tr:eq(1) td:eq(0)").text("4");
    // $("table tr:eq(1) td:eq(1)").text("5");
    // $("table tr:eq(1) td:eq(2)").text("6");

    // $("table tr:eq(2) td:eq(0)").text("7");
    // $("table tr:eq(2) td:eq(1)").text("8");
    // $("table tr:eq(2) td:eq(2)").text("9");

    // $("table tr:eq(3) td:eq(0)").text("10");
    // $("table tr:eq(3) td:eq(1)").text("11");
    // $("table tr:eq(3) td:eq(2)").text("12");

    // 0     1     2     3
    // 0123  3210  0123  3210

    // let n = 0;
    // for(i = 0; i < 4; i++)
    // {
    //     let b = (i % 2 == 0);
    //     let j = 0, z = 4;

    //     if(!b){
    //         j = 4;
    //         z = j*2;
    //     }

    //     for(; j < z; j++)
    //     {
    //         $(`table tr:eq(${i}) td:eq(${b ? j : (z-j-1)})`).text(++n);
    //     }
    // }

    // let rec_w = 3, rec_h = 2;
    // let row = 0, col = 0;
    // let flag = true;

    // let str = "<table id='TableStyle'><tr>"

    // for(i = 1; i <= rec_w * rec_h; i++){
    //     $(`table tr:eq(${row}) td:eq(${col})`).text(i);

    //     console.log(i + " " + row + " " + col);

    //     if(i % rec_w == 0){
    //         row++;
    //         flag = !flag;

    //         if(i == rec_w * rec_h) str += "<td></td>"
    //         else str += "<td></td></tr><tr>"
    //     }
    //     else{
    //         if(flag) col++;
    //         else     col--;

    //         str += "<td></td>"
    //     }
    // }

    // str += "</tr></table>";
    // $('body').html(str);


    // let rec_w = $("table tr:eq(0) td").length;
    // let rec_h = $("table tr").length;
    // let row = 0, col = 0;
    // let flag = true;

    // for(i = 1; i <= rec_w * rec_h; i++)
    // {
    //     $(`table tr:eq(${row}) td:eq(${col})`).text(i);

    //     if(i % rec_w == 0)
    //     {
    //         row++;
    //         flag = !flag;
    //     }
    //     else
    //     {
    //         if(flag) col++;
    //         else     col--;
    //     }
    // }

//});
