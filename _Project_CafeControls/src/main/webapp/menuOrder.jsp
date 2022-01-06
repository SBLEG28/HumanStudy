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
	<script type="text/javascript">
		$(function() {

			var indicator = $('#indicator'), indicatorHalfWidth = indicator
					.width() / 2, lis = $('#tabs').children('li');

			$("#tabs").tabs(
					"#content section",
					{
						effect : 'fade',
						fadeOutSpeed : 0,
						fadeInSpeed : 400,
						onBeforeClick : function(event, index) {
							var li = lis.eq(index), newPos = li.position().left
									+ (li.width() / 2) - indicatorHalfWidth;
							indicator.stop(true).animate({
								left : newPos
							}, 600, 'easeInOutExpo');
						}
					});

		});
	</script>

	<header>
		<hgroup>
			<jsp:include page="header.jsp" />
		</hgroup>
	</header>

	<div class="leftfloat">
		<!-- 메뉴 목록  -->
		<!-- 
		1. 메뉴키
		2. 메누명
		3. 가격
		4. 메뉴구분
		 -->
		<!--  메뉴 목록  -->
		<div class="topfloat">
			<!--  메뉴 출력  -->
			<div class="topfloat">
				<h1>메 뉴 목 록</h1>
				<button>메뉴관리</button>
				<nav>
					<!--   쿼리로 가져오도록 변형(메뉴는 스타벅스꺼 가져오기)   -->
					<ul id="tabs">
						<li><a class="current" href="#">Item 1</a></li>
						<li><a href="#">Item 2</a></li>
						<li><a href="#">Item 3</a></li>
						<li><a href="#">Item 4</a></li>
						<li><a href="#">Item 5</a></li>
					</ul>
					<span id="indicator"></span>
				</nav>

				<div id="content">
					<section>
						<!-- 객실에서 메뉴로 형태 변경  -->
						<table id=tblRoom>
							<thead>
								<tr>
									<th>객실번호</th>
									<th>객실명</th>
									<th>객실종류</th>
									<th>숙박가능인원</th>
									<th>숙박비</th>
							</thead>
							<tbody>

							</tbody>
						</table>
					</section>

					<section>
						<!-- 객실에서 메뉴로 형태 변경  -->
						<table id=tblRoom>
							<thead>
								<tr>
									<th>객실번호</th>
									<th>객실명</th>
									<th>객실종류</th>
									<th>숙박가능인원</th>
									<th>숙박비</th>
							</thead>
							<tbody>

							</tbody>
						</table>
					</section>

					<section>
						<!-- 객실에서 메뉴로 형태 변경  -->
						<table id=tblRoom>
							<thead>
								<tr>
									<th>객실번호</th>
									<th>객실명</th>
									<th>객실종류</th>
									<th>숙박가능인원</th>
									<th>숙박비</th>
							</thead>
							<tbody>

							</tbody>
						</table>
					</section>

					<section>
						<!-- 객실에서 메뉴로 형태 변경  -->
						<table id=tblRoom>
							<thead>
								<tr>
									<th>객실번호</th>
									<th>객실명</th>
									<th>객실종류</th>
									<th>숙박가능인원</th>
									<th>숙박비</th>
							</thead>
							<tbody>

							</tbody>
						</table>
					</section>

					<section>
						<!-- 객실에서 메뉴로 형태 변경  -->
						<table id=tblRoom>
							<thead>
								<tr>
									<th>객실번호</th>
									<th>객실명</th>
									<th>객실종류</th>
									<th>숙박가능인원</th>
									<th>숙박비</th>
							</thead>
							<tbody>

							</tbody>
						</table>
					</section>
				</div>
			</div>
			<br> <br> <br>

			<!-- 메뉴 주문창 -->
			<div class="bottomfloat">
				<br> <br> <br> More script and css style : <a
					href="http://www.htmldrive.net/"
					title="HTML DRIVE - Free DHMTL Scripts,Jquery plugins,Javascript,CSS,CSS3,Html5 Library">www.htmldrive.net
				</a>

				<div class="bottomfloat">
					<div class="topfloat">
						<div class="leftfloat">
							<p>메가크리스마스초코</p>

							<p>휘핑</p>

							<p>3,900원</p>
						</div>

						<div class="rightfloat">
							<button>삭제</button>
							<img src="img/mius.png" alt="" />
							<p>수량
							<p>
								<img src="img/plus.png" alt="" />
						</div>
					</div>

					<br> <br> <br>
					<div class="bottomfloat">
						상품금액 총액 : 1000원
						<hr width="100%" align="left">
						<button>주문하기</button>
					</div>
				</div>
			</div>
		</div>

		<br> <br> <br>
		<!--  주 문 내 역 -->
		<div class="bottomfloat">
			<h1>주 문 내 역</h1>
			<div class="topfloat"></div>

			<div class="bottonfloat"></div>
		</div>

	</div>

	<div class="rightfloat">
		<h1>매 출 내 역</h1>
		<button>summary</button>
	</div>

	<footer>
		<fgroup> <jsp:include page="footer.jsp" /> </fgroup>
	</footer>
</body>

</html>