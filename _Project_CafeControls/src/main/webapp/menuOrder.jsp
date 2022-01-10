<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<title>Order</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- stylesheets -->
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">

</head>

<body>
	<header>
		<hgroup>
			<jsp:include page="header.jsp" />
		</hgroup>
	</header>

	<div class="display1">
		<div>
			<!--  메뉴 출력  -->
			<div class="menubox1">

				<div class="part">
					<h1>메 뉴 목 록</h1>
					<button id="btnManage">메뉴 관리</button>
				</div>

				<!--   메뉴 카테고리(select)   -->
				<nav>
					<ul id="tabs"></ul>
					<span id="indicator"></span>
				</nav>

				<!--   메뉴   -->
				<div class="menu" id="menu"></div>
			</div>

			<br>
			<!-- 메뉴 주문창 -->
			<div class="menubox2" id="dis_ord">
				<!-- http://www.htmldrive.net/	-->
				<div class="menuclick1" style="max-height:180px; border: 2px solid #036635;border-radius: 2em;padding: 10px;">
					<div id="menuord" class="menuclick2" style="padding:10px">
						
						<img class="picture" id="ord_img" />

						<div>
							<p class="left" id="ord_name"></p><br>
							<p class="left" id="ord_price"></p>
							<br><br><br><br><br><br><br>
							<!-- 선택 상품 총액 (수량 * 금액) -->
							<div class="name" id="sumprice"></div>
						</div>

						<div>
							<div>
								<button id="btnAdd">담기</button>
								<button id="btnReset">비우기</button>
							</div>

							<div>
								<img class="part" id="mius" src="img/mius.png" /> <label
									class="part" id="quantity"></label> <img class="part" id="plus"
									src="img/plus.png" />
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--  주문내역 해더 및 버튼 -->
			<div class="menubox3">
				<br>
				<h1>주 문 내 역</h1>

				<p id="sumorder">총액 :</p>

				<small>Format: 1234567890</small> 적립번호:<input type="tel" id="phone"
					pattern="[0-9]{3}[0-9]{4}[0-9]{4}" required></input>
				<button id="btnallreset">일괄취소</button>
				<button id="btnorder">주문완료</button>
			</div>

			<hr style="border: outset 5px green;">

			<!-- 주문내역 리스트 -->
			<div class="menubox4" id="shoplist"></div>
		</div>

		<!--  매출내역  -->
		<div class="menubox4">
			<div class="part">
				<h1>매 출 내 역</h1>
				<button id="btnSummery">Summery</button>
			</div>
			
			<br>
			<br>
			
			<nav id="salse" class="container"></nav>
		</div>
	</div>


	<!-- 메뉴 관리  -->
	<div id="dgMenu" title="메뉴관리" style="display: none;">
		<table>
			<tr>
				<td><select id="selMenu" size=10 style="font-size: 14px;"></select>
				</td>
				<td>
					<table>
						<tr>
							<td>메뉴코드</td>
							<td><input type=text id="_code" style="width: 100px;"></td>
						</tr>
						<tr>
							<td>메뉴명</td>
							<td><input type=text id="_name" style="width: 100px;"></td>
						</tr>
						<tr>
							<td>단가(가격)</td>
							<td><input type=number id="_price" min=1
								style="width: 100px;">원</td>
						</tr>
						<tr>
							<td>메뉴 카테고리</td>
							<td><select id="selCtg">
							</select></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button id="btnInsert">추가</button>
								<button id="btnUpdate">수정</button>
								<button id="btnDelete">삭제</button>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>

	<!-- Summery -->
	<div id="dgSummery" title="Summery" class="dgSummery">
		<div id="_dgmenu"></div>
		<div id="_dgcus"></div>
	</div>

	<!--
	<footer>
		<fgroup> <jsp:include page="footer.jsp" /> </fgroup>
	</footer>
	-->

	<!-- javascript -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.tools.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

	<script type="text/javascript" src="common.js"></script>
	<script type="text/javascript" src="dataset.js"></script>
	<script type="text/javascript" src="menuevent.js"></script>
	<script type="text/javascript" src="orderevent.js"></script>
	<script type="text/javascript" src="menuManage.js"></script>
</body>

</html>