num = document.getElementById('first');
num.addEventListener('focus', doDelete);
num.addEventListener('blur', gugudan);

function doDelete()
{
    num = document.getElementById('first');
    num.addEventListener('focus', doDelete);

    document.getElementById('result').value = "";
}

function gugudan(){
    num = document.getElementById('first').value;

    document.getElementById('result').value = "";
    for(i = 1; i <= 9; i++)
        document.getElementById('result').value += num + " * " + i + " = " + (num * i) + "\n";
}

// 익명함수
// document.getElementById('first').addEventListener('click', function(){
//     console.log("asd");
// });
