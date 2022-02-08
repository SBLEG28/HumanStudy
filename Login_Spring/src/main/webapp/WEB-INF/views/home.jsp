<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/pageStyle.css">
<title>Soobin's WebSite</title>

<!--<c:out value="${hlogin}" escapeXml="false"></c:out>-->

<%
String a_uid = request.getParameter("uid");

if (a_uid != null) {
	out.print("<div class='topnav'><a href='/edu/lgout?id=" + a_uid + "'>Log out</a>");
	out.print("<a>" + a_uid + " 회원</a>&nbsp;&nbsp;</div>");
} else {
	request.removeAttribute("uid");
	out.print("<div class='topnav'><a href='/edu/signon'>Sign Up</a>&nbsp;&nbsp;");
	out.print("<a href='/edu/login'>Sign In</a></div><br>");
}
%>
<jsp:include page="header.jsp" />
</head>
<body>
	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<table>
					<c:forEach items="${al}" var="c">
						<tr>
							<td>${c.COUNTRY_ID }</td>
							<td>${c.COUNTRY_ISO_CODE }</td>
							<td>${c.COUNTRY_NAME }</td>
							<td>${c.COUNTRY_SUBREGION }</td>
							<td>${c.COUNTRY_SUBREGION_ID }</td>
							<td>${c.COUNTRY_REGION }</td>
							<td>${c.COUNTRY_REGION_ID }</td>
							<td>${c.COUNTRY_TOTAL }</td>
							<td>${c.COUNTRY_TOTAL_ID }</td>
							<td>${c.COUNTRY_NAME_HIST }</td>
							<td>${c.CREATE_DATE }</td>
							<td>${c.UPDATE_DATE }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="card">
				<h2>TITLE HEADING</h2>
				<h5>Title description</h5>
				<div class="fakeimg" style="height: 200px;">
				<table>
                        <tr><td>name&nbsp;<input type=text id=d_name name=d_name size=10></td></tr>
                        <tr><td>price&nbsp;<input type=number id=d_price name=d_price min=500 step=500 style="width: 100px"></td></tr>
                        <tr><td align=right><button id=btnDone>완료</button>&nbsp;<button id=btnEmpty>비우기</button>
                        </td></tr>
                </table>
				<!-- 테스트  
				<table>
					<c:forEach items="${al2}" var="c">
						<tr>
							<td>${c.par_name }</td>
							<td>${c.de_id }</td>
							<td>${c.department }</td>
							<td>${c.EMP_NAME }</td>
						</tr>
					</c:forEach>
				</table>
				-->
				</div>
			</div>
		</div>
		<div class="rightcolumn">
			<div class="card">
				<h2>오늘의 메뉴</h2>
				<div class="fakeimg" style="height: 100px;">Image</div>
				<p>Some text..</p>
			</div>
			<div class="card">
				<h2>인기메뉴</h2>
				<div class="fakeimg">
					<p>Image</p>
				</div>
				<div class="fakeimg">
					<p>Image</p>
				</div>
				<div class="fakeimg">
					<p>Image</p>
				</div>
			</div>
			<div class="card">
				<h2>Follow Me</h2>
				<p>Some text..</p>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="js/Common.js"></script>
<script type="text/javascript" src="js/test.js"></script>
<footer>
	<jsp:include page="Footer.jsp" />
</footer>
</html>