<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

	<select id="selRoom" size="12" style="width: 30%">
		<c:forEach var="m" items="${alRoom}">
			<option value="${m.roomcode}">${m.name},${m.howmuch},${m.howmany},${m.type}</option>
		</c:forEach>
	</select>
	<br>
	
	<table>
	<tr>
	<td>코드:</td><td><input type="text" id="code" name="code"></input></td>
	</tr>
	<tr>
	<td>룸:</td><td><input type="text" id="name" name="name"></input></td>
	</tr>
	<tr>
	<td>금액:</td><td><input type="number" id="price" name="price"></input></td>
		</tr>
	<tr>
	<td>인원수:</td><td><input type="number" id="hmp" name="hmp"></input></td>
		</tr>
	<tr>
	<td>타입:</td><td><select id="type" size="1">
			<option value=1>Single</option>
			<option value=2>Double</option>
			<option value=3>Triple</option>
			<option value=4>Quad</option>
		</select></td>
	</tr>
	<tr>
		<td colspan=2>
			<input type="button" id="btnAdd" name="btnAdd" value="추가" ></input>
			<input type="button" id="btnDel" name="btnDel" value="삭제" ></input>
		</td>
	</tr>
	</table>
</body>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on("click", "#btnAdd", function(){
	let c = $("#code").val();
	let exists = false; 
	
	if($("#name").val() == ""){
		alert("룸을 작성하지 않았습니다");
		return false;
	}
	if($("#price").val() == ""){
		alert("금액를 작성하지 않았습니다");
		return false;
	}
	if($("#hmp").val() == ""){
		alert("인원수를 작성하지 않았습니다");
		return false;
	}

	if(c = ""){
		$.post("add", {name: $("#name").val(),
					   price: $("#price").val(),
					   hmp:  $("#hmp").val(),
					   type: $("#selRoom option:selected").val()}, function(txt){
			resetall();
			}, "json");
	} else{
		$('#selRoom option').each(function(){ 
			if (this.value == c) { 
				console.log(this.value, c);
				exists = true;
				return false; 
			}
		});
		if(exists){
			alert("이미 존재하고 있습니다");
			return false; 
		}else{	
			$.post("update", {code: c, 
							  name: $("#name").val(),
							  price: $("#price").val(),
							  hmp:  $("#hmp").val(),
							  type: $("#selRoom option:selected").val()}, function(txt){
				resetall();
				}, "json");
		}
	}
	
	location.href="/home";
})
.on("change", "#selRoom", function(){
	$("#code").val($("#selRoom option:selected").val());
	
	let sp = $("#selRoom option:selected").text().split(",");
	console.log(sp);
	
	$("#name").val(sp[0]);
	$("#price").val(sp[1]);
	$("#hmp").val(sp[2]);
	$('#type').val(parseInt(sp[3])).prop("selected",true);
})
.on("click", "#btnDel", function(){
	if($("#code").val() == ""){
		alert("코드를 작성하지 않았습니다");
		return false;
	}
	
	$.post("del", {code: $("#code").val() }, function(txt){
	}, "json");
	
	$("#selRoom option[value='"+ $("#code").val() + "']").remove();
	resetall();
});

function resetall()
{
	$("#code").val("");
	$("#name").val("");
	$("#price").val("");
	$("#hmp").val("");
	$("#type option eq(0)").prop("selected",true);
}
</script>
</html>
