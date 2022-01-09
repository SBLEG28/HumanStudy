<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<title>Order</title>
<meta charset="utf-8" />
<!-- stylesheets -->
<link rel="stylesheet" type="text/css" href="css/style.css" />

<!-- javascript -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.tools.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
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

				<div class="headside">
					<div>
						<h1>메 뉴 목 록</h1>
					</div>
					<div>
						<button id="btnManage">메뉴관리</button>
					</div>
				</div>

				<!--   메뉴 카테고리(select)   -->
				<nav>
					<ul id="tabs"></ul>
					<span id="indicator"></span>
				</nav>

				<!--   메뉴   -->
				<div class="menu" id="content"></div>
			</div>

			<br>
			<!-- 메뉴 주문창 -->
			<div class="menubox2" id="dis_ord">
				<!-- http://www.htmldrive.net/	-->
				<div class="menuclick1">
					<div id="menuord" class="menuclick2">
						<img class="picture" id="ord_img" />

						<div>
							<p id="ord_name"></p>
							<p id="ord_price"></p>

							<!-- 선택 상품 총액 (수량 * 금액) -->
							<div id="sumprice" style="float: bottom"></div>
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

				<small>Format: 123-456-7890</small> 적립번호:<input type="tel"
					id="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required></input>
				<button id="btnallreset">일괄취소</button>
				<button id="btnorder">주문완료</button>
			</div>

			<hr style="border: outset 5px green;">

			<!-- 주문내역 리스트 -->
			<div class="menubox4" id="shoplist"></div>
		</div>

		<!--  매출내역  -->
		<div>
			<h1>매 출 내 역</h1>
			<button>summary</button>

			<div id="salse">
			
			</div>
		</div>
	</div>

	<!--
	<footer>
		<fgroup> <jsp:include page="footer.jsp" /> </fgroup>
	</footer>
	-->
	<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
	<script type="text/javascript" src='Common.js'></script>
	<script type="text/javascript" src="menuset.js"></script>
	<script type="text/javascript" src="menuevent.js"></script>
	<script type="text/javascript" src="orderevent.js"></script>
</body>

</html>