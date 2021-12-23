$(document)
.ready(function(){
    $("#sep, #korea, #france, #spain").prop("checked", true);
})
.on("change", "input:radio[name=month]", function (){
    $("#txt_mon").val($(this).prop("checked"));
})
.on("change", "input:checkbox[name=country]", function (){
    let country = "";

    $("input:checkbox[name=country]").each(function(){
        if($(this).prop("checked"))
            country += $(this).val() + " ";
    });

    $("#txt_con").val(country);
});

// .ready(function(){
//     n = 0;
//     arRect = ["#dvFirst", "#dvSecond", "#dvThird"];
//     flag = true;
// })
// .on("click", "#dvFirst",function(){
//     if(flag)
//     {
//         itv = setInterval(ColorChange, 500);
//         flag = false;
//     }
//     else
//     {
//         clearInterval(flag);
//         flag = true;
//     }
// });

// function ColorChange(){
//     for(i = 0; i < 3; i++)
//     {
//         if(n % 3 == 1)
//             $(arRect[i]).css("background-color",'red');
//         else
//             $(arRect[i]).css("background-color",'white');
//     }
//     n++;
// }
    
// .on("click", "#dvFirst",function(){
//     setInterval(ColorChange, 500);
// });

// function ColorChange()
// {
//     ++n;
    
//     if(n % 3 == 1)
//     {
//         $('#dvFirst').css("background-color",'red');
//         $('#dvThird').css("background-color",'white');
//     }
//     else if (n % 3 == 2)
//     {
//         $('#dvFirst').css("background-color",'white');
//         $('#dvSecond').css("background-color",'red');
//     }
//     else
//     {
//         $('#dvSecond').css("background-color",'white');
//         $('#dvThird').css("background-color",'red');
//     }
// }

// document.getElementById("dtnSolve").addEventListener("click", function()
// {
//     let a = document.getElementById('val_a').value;
//     let b = document.getElementById('val_b').value;
//     let c = document.getElementById('val_c').value;

//     console.log(a + " " + b + " " + c);

//     let x1 = (-b + Math.sqrt(Math.pow(b, 2) - (4 * a * c))) / (2 * a);
//     let x2 = (-b - Math.sqrt(Math.pow(b, 2) - (4 * a * c))) / (2 * a);

//     console.log(x1 + " " + x2);

//     document.getElementById('x1') = x1;
//     document.getElementById('x2') = x2;
// });

// document.getElementById("dtnSolve").addEventListener("click", function()
// {
//     let a = document.getElementById('val_a').value;
//     let b = document.getElementById('val_b').value;
//     let c = document.getElementById('val_c').value;

//     let x1 = (-b + Math.sqrt(Math.pow(b, 2) - (4 * a * c))) / (2*a);
//     let x2 = (-b - Math.sqrt(Math.pow(b, 2) - (4 * a * c))) / (2*a);

//     document.getElementById('x1') = x1;
//     document.getElementById('x2') = x2;
// });


//let n = 0;
//setInterval(ColorChange, 500);
//let itv1, itv2;

// document.getElementById("dtnStart").addEventListener("click", function(){
//     itv1 = setInterval(ColorChange, 500);
//     itv2 = setInterval(Timeflow, 1000);
// });

// function Timeflow()
// {
//     document.getElementById("lbTime").innerHTML = 
//     new Date(+new Date() + 3240 * 10000).toISOString().replace("T", " ").replace(/\..*/, '');
// }

// function ColorChange()
// {
//     ++n;
    
//     if(n % 3 == 1)
//     {
//         document.getElementById('dvFirst').style.backgroundColor='red';
//         document.getElementById('dvThird').style.backgroundColor='white';
//     }
//     else if (n % 3 == 2)
//     {
//         document.getElementById('dvFirst').style.backgroundColor='white';
//         document.getElementById('dvSecond').style.backgroundColor='red';
//     }
//     else
//     {
//         document.getElementById('dvSecond').style.backgroundColor='white';
//         document.getElementById('dvThird').style.backgroundColor='red';
//     }
// }


// today = new Date();
// console.log("be = " + today);
// today.setDate(today.getDate() + 100)
// console.log("af = " + today);

// today = new Date();
// beday = new Date(1994, 5, 14);

// gap = (today - ybeday) / (1000 * 60 * 60 * 24);

// document.getElementById("lbNow").innerHTML = gap;

//setInterval(doWrite, 500);

// function doWrite(){
//     let DOW = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
//     let month = ['January(Jan.)', 'February(Feb.)','March(Mar.)','April(Apr.)','May(May.)','June(Jun.)',
//             'July(Jul.)','August(Aug.)','September(Sep.)','October(Oct.)','November(Nov.)', 'December(Dec.)'];

//     // YYYY-MM-DD hh:mm:ss
//     // new Date(+new Date() + 3240 * 10000).toISOString().replace("T", " ").replace(/\..*/, '');
//     // YYYY-MM-DD
//     // new Date(+new Date() + 3240 * 10000).toISOString().split("T")[0];
//     today = new Date();
//     str = today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + (today.getDate()) + " ";
//     str += today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds() + "<br>";
//     str += "(" + today.getDay() + ")" + " " + month[today.getMonth()] + " " + DOW[today.getDay()];
//     console.log(str);
//     document.getElementById("lbNow").innerHTML = str;
// }

// document.getElementById('dvFirst').addEventListener('click',function(){
//     timer1 = setTimeout(showmeColor1, 1000);
// });

// document.getElementById('dtnStop').addEventListener('click', function(){
//     if(timer1 != "")
//         clearTimeout(timer1);
// });


// function showmeColor1(){
//     document.getElementById('dvFirst').style.backgroundColor='red';
//     document.getElementById('dvThird').style.backgroundColor='white';

//     timer1 = setTimeout(showmeColor2, 1000);
// };

// function showmeColor2(){
//     document.getElementById('dvFirst').style.backgroundColor='white';
//     document.getElementById('dvSecond').style.backgroundColor='red';

//     timer1 = setTimeout(showmeColor3, 1000);
// };

// function showmeColor3(){
//     document.getElementById('dvSecond').style.backgroundColor='white';
//     document.getElementById('dvThird').style.backgroundColor='red';

//     timer1 = setTimeout(showmeColor1, 1000);
// };

// document.getElementById('dvFirst').addEventListener('click', function () {
//     setTimeout(function () {
//         document.getElementById('dvFirst').style.backgroundColor = "red";
//         setTimeout(function () {
//             document.getElementById('dvSecond').style.backgroundColor = "green";
//             setTimeout(function () {
//                 document.getElementById('dvThird').style.backgroundColor = "blue";
//             }, 1000);
//         }, 1000);
//     }, 1000);
// });


// document.getElementById('result').addEventListener('focus', function(){
//     timer1 = setTimeout(gugudan, 3000)
// });

// document.getElementById('dtnStop').addEventListener('click', function(){
//     if(timer1 != ""){
//         clearTimeout(timer1);
//         document.getElementById('result').style.backgroundColor = "pink";
//     }
// });

// function gugudan(){
//     num = document.getElementById('first').value;

//     str = "";
//     for(i = 1; i <= 9; i++)
//         str += num + " * " + i + " = " + (num * i) + "\n";

//     document.getElementById('result').value = str;
//     document.getElementById('result').style.backgroundColor = "yellow";
// }


// 익명함수
// document.getElementById('first').addEventListener('click', function(){
//     console.log("asd");
// });
