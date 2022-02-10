<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon" href="images/favicon.png" type="">

<title>COVID-19 Web Site</title>

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap"
	rel="stylesheet">

<!--owl slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />
</head>


<body>  
  <div class="hero_area">
  	<div class="hero_bg_box">
      <img src="images/hero-bg.png" alt="">
    </div>
    
 <!-- header section strats -->
    <header class="header_section"">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.jsp">
            <span>
              COVID-19
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="main.do">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="noticeList.do">Notice</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Covid-19 live</a>
              </li>
              <li class="nav-item">
              	<c:if test="${not empty phoneNumber }">
                	<a class="nav-link" href="homeDeliveryPage.do">Home delivery</a>
                </c:if>
              </li> 
              <li class="nav-item">
              	<c:if test="${not empty phoneNumber }">
                	<a class="nav-link" href="recordList.do">Symptom Record</a>
                </c:if>
              </li>
              
              <li class="nav-item">
              	<c:if test="${empty phoneNumber }">
					<a class="nav-link" href="loginForm.do">Login</a>
				</c:if>
			   </li>
			  <li class="nav-item">
				<c:if test="${not empty phoneNumber }">
					<a class="nav-link" href="logout.do">Logout</a>
				</c:if>
              </li>
              <form class="form-inline">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                  <i class="fa fa-search" aria-hidden="true"></i>
                </button>
              </form>
            </ul>
          </div>
        </nav>
      </div>
    </header>
  	<!-- end header section -->
</body>
</html>