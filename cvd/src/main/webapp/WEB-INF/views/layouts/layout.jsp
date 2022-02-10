<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
	<head>
		<!--  <link href="css/stylelogin.css" rel="stylesheet" /> -->
 		 <link href="css/style.css" rel="stylesheet" />
 	</head>
<body>
	<div class="main_cont">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>