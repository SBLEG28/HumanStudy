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
			<option value="${m.roomcode}">${m.name} ${m.howmany}</option>
		</c:forEach>
	</select>
	<br>
	
	코드:<input type="text" id="code" name="code"></input><br>
	룸:<input type="text" id="name" name="name"></input><br>
	금액:<input type="number" id="price" name="price"></input><br>
	인원수:<input type="number" id="hmp" name="hmp"></input><br>
	타입:<input type="text" id="type" name="type"></input><br>

	<input type="button" id="btnAdd" name="btnAdd" value="추가" ></input>
	<input type="button" id="btnDel" name="btnDel" value="삭제" ></input>
	<br><br>
</body>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on("click", "#btnAdd", function(){
	console.log("123");
	
	$.post("add", {name: $("#name").val(), price: $("#price").val() }, function(txt){
		console.log("456");
		name: $("#name").val("")
		price: $("#price").val("")
		}, "json");

})
.on("click", "#selRoom option", function(){
	$("#code").val($(this).val());
	//$("#name").val($(this).attr());
	//$("#price").val();
	//$("#hmp").val();
	//$("#type").val();
})
.on("click", "#btnDel", function(){
	if($("#code").val() == ""){
		alert("코드를 작성하지 않았습니다");
		return false;
	}
	
	$.post("del", {code: $("#code").val() }, function(txt){
	}, "json");
	
	console.log("1");
	$("#selRoom option[value='"+ $("#code").val() + "']").remove();
	console.log("1");
	$("#code").val("");
	console.log("1");
	$("#name").val("");
	console.log("1");
	$("#price").val("");
	console.log("1");
	$("#hmp").val("");
	console.log("1");
	$("#type").val("");
	console.log("1");
})
;
</script>
</html>
