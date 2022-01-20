<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>카페관리</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
</head>
<body>
	<style>
.tb {
	margin: 3px;
}

.tb_d {
	valign: top;
	border: 1px solid black;
}
</style>

	<h1>카페 주문 관리</h1>

	<table class="tb">
		<tr>
			<td class="tb_d">
				<table>
					<tr>
						<td align="right" colspan="2">메뉴목록&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="button" id="btnMenu" name="btnMenu" value="메뉴관리"></td>
					</tr>
					<tr>
						<td colspan="2"><select id="selMenu" size="12"
							style="width: 100%">
								<c:forEach var="m" items="${alMenu}">
									<option value="${m.code}">${m.name}${m.price}</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td>메뉴명</td>
						<td><input type="text" id="manu" name="manu" readonly></td>
					</tr>
					<tr>
						<td>수량</td>
						<td><input type="number" id="qty" name="qty" min="1">잔</td>
					</tr>
					<tr>
						<td>금액</td>
						<td><input type="number" id="price" name="price" readonly>원</td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="button"
							id="btnAdd" value="추가"> <input type="button"
							id="btnReset" value="비우기"></td>
					</tr>
				</table>
			</td>

			<td class="tb_d">
				<table>
					<tr>
						<td align="center" colspan="2">주문목록</td>
					</tr>
					<tr>
						<td colspan="2"><select id="selOrder" size="15"
							style="width: 100%"></select></td>
					</tr>
					<tr>
						<td>총액</td>
						<td><input type="number" id="total" name="total"></td>
					</tr>
					<tr>
						<td>모바일</td>
						<td><input type="phone" id="mobile" name="mobile"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="button"
							id="btnOrder" value="주문완료"> <input type="button"
							id="btnCancle" value="주문취소"></td>
					</tr>
				</table>
			</td>

			<td class="tb_d">
				<table>
					<tr>
						<td align="center" colspan="2">매출내역</td>
					</tr>
					<tr>
						<td colspan="2"><select id="selSales" size="18"
							style="width: 230px"></select></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<div style="display: none;" id="dlgMenu">
		<table>
			<tr>
				<td><select id="selMenu1" size="10" style="width: 200px"></select></td>
				<td>
					<table>
						<tr>
							<td>code&nbsp;&nbsp;<input type="text" id="d_code"
								name="d_code"></td>
						</tr>
						<tr>
							<td>name&nbsp;<input type="text" id="d_name" name="d_name"></td>
						</tr>
						<tr>
							<td>price&nbsp;&nbsp;<input type="number" id="d_price"
								name="d_price"></td>
						</tr>
						<tr>
							<td align="center" colspan="2"><input type="button"
								id="btnDone" value="완료"> <input type="button"
								id="btnEmpty" value="비우기"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
$(document)
.on("click", "#btnMenu", function(){
	$("#dlgMenu").dialog({
		width: 500,
		open:function(){

			$.post("/list", {}, function(txt){
				
				console.log(txt, txt.length);
				for(i=0; i<txt.length; i++){
					$("#selMenu1").append("<option value=" + txt[i]["code"] + ">"+ txt[i]["name"] +" " +  txt[i]["price"] + "</option>");
				}
				
			}, "json");
			
		},
		close:function(){
			
		}
	});
	return false;
});
</script>

</html>
