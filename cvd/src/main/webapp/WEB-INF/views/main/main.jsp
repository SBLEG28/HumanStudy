<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="">

  <title> COVID-19 Web Site </title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>

    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                      공지사항
                    </h1>
                    <p>
                      재택 치료자와 공동 격리자를 위한 준수사항 입니다
                    </p>
                    <div class="btn-box">
                      <a href="noticeList.do" class="btn1">
                        바로가기
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                      홈배달 서비스
                    </h1>
                    <p>
                      재택 치료자와 공동 격리자를 위한 24시간 홈배달 서비스 입니다<br>
                    </p>
                    <div class="btn-box">
                    <c:if test="${empty phoneNumber }">
                      <a href="" class="btn1">바로가기</a>
                     </c:if>
                     <c:if test="${not empty phoneNumber }">
                      <a href="homeDeliveryPage.do" class="btn1">바로가기</a>
                     </c:if>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                     증상 기록하기
                    </h1>
                    <p>
                      오늘의 상태를 기록해주세요<br>
                      <br>
                      ▶ 회복을 위한 길 ◀<br>
                      충분한 수면과 휴식<br>
                      긍정적인 마음<br>
                      가벼운 스트레칭<br>
                      주변인들과의 연락<br>
                    </p>
                    <div class="btn-box">
                    	<c:if test="${authority == 'USER'}">
                     		 <a href="recordWriteForm.do" class="btn1">기록</a>
                      	</c:if>
                      	<c:if test="${empty phoneNumber }">
                     		 <a href="" class="btn1">기록</a>
                      	</c:if>
                      	<c:if test="${authority == 'ADMIN' }">
                     		 <a href="" class="btn1">기록</a>
                      	</c:if>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <ol class="carousel-indicators">
          <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
          <li data-target="#customCarousel1" data-slide-to="1"></li>
          <li data-target="#customCarousel1" data-slide-to="2"></li>
        </ol>
      </div>

    </section>
    <!-- end slider section -->
  </div>


  <!-- department section -->
  <section class="department_section layout_padding">
    <div class="department_container">
      <div class="container ">
        <div class="heading_container heading_center">
          <h2>
            재택치료·공동격리 생활안내
          </h2>
          <p>
            ※ 재택치료관리팀 담당자와 재택치료관리의료기관 담당 의료진 전화번호를 기억하세요<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            언제 어떨 때 누구에게 도와달라고 해야 하는지만 알면 스스로와 가족을 지킬 수 있습니다.
          </p>
        </div>
        <div class="row">
          <div class="col-md-3">
            <div class="box ">
              <div class="img-box">
                <img src="images/s1.png" alt="">
              </div>
              <div class="detail-box">
                <h5>
                  심리지원센터
                </h5>
                <p>
                  코로나19로 심리적 어려움을<br>
                  겪고 있는 분들을 위해서<br>
                  심리상담전화를 운영하고있습니다<br>
                  <br>
                  주간: 055-123-2785(평일)<br>
                  야간: 02-2345-0001(24시간)<br>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="box ">
              <div class="img-box">
                <img src="images/s2.png" alt="">
              </div>
              <div class="detail-box">
                <h5>
                  수칙안내
                </h5>
                <p>
                  사랑하는 가족과 이웃을 위해서<br>
                  <br>
                  자택으로 보내드린<br>
                  생활안내문과 수칙안내서를<br>
                  꼭 숙지하여 주시기 바랍니다<br>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="box ">
              <div class="img-box">
                <img src="images/s3.png" alt="">
              </div>
              <div class="detail-box">
                <h5>
                  증상기록
                </h5>
                <p>
                  재택치료자님<br>
                  하루 1회이상 증상을 기록해주세요<br>
                  <br>
                  매일 AM 09:00<br>
                  담당 전문의 진단
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="box ">
              <div class="img-box">
                <img src="images/s4.png" alt="">
              </div>
              <div class="detail-box">
                <h5>
                  24시간 응급콜
                </h5>
                <p>
                  본인이나 확진된 가족의<br>
                  상태가 점점 나빠진다면<br>
                  바로 응급콜에 연락주세요<br>
                  <br>
                  119에 연락 시<br>
                  재택치료 환자임을 꼭 밝히세요<br>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="btn-box">
          <a href="#">
            Read More
          </a>
        </div>
      </div>
    </div>
  </section>
  <!-- end department section -->


  <!-- jQery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- custom js -->
  <script type="text/javascript" src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->

</body>
</html>