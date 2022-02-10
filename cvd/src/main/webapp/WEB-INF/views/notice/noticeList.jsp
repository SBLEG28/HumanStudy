<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>notice</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    
    <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="">
  
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
  <div class="hero_area">
    
     <section class="department_section layout_padding">
    <div class="department_container">
      <div class="container ">
        <div class="heading_container heading_center">
          <h2>
            치료자·공동격리자를 위한 공지사항
          </h2>
          <p>
           상담문의가 필요하신 경우 전담공무원·지역보건소로 전화주시기 바랍니다<br>
           This is a notice for the therapist and the joint quarantine<br>
          </p>
        </div>
    
	 <div class="container-fluid pt-4 px-4">
		<div class="row g-4">
			<div class="col-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">공지사항</h6>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class="thfontlocation">
                                        <tr>
                                            <th scope="col">　#</th>
                                            <th scope="col">　　　　　　　　　　　　　　　　　　　　　제목　　</th>
                                            <th scope="col">　　　작성일자</th>
                                            <th scope="col">　　조회수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${notice }" var="notice">
										<tr onmouseover='this.style.background="#CCFFCC";'
											onmouseleave='this.style.background="white";'
											onclick="noticeSelect(${notice.noticeId})">
											<td align="center">${notice.noticeId }</td>
											<td align="center">${notice.noticeTitle }</td>
											<td align="center">${notice.noticeDate }</td>
											<td align="center">${notice.noticeHit }</td>
										</tr>
									</c:forEach>
                                    </tbody> 
                                </table>
                            </div><br>
                            <br>
                            <div>
								<c:if test="${authority == 'ADMIN' }">
								<button type="button" onclick="location.href='noticeWriteForm.do'" class="btn btn-secondary">글쓰기</button>
								</c:if>
							</div>
							<div>
								<form id="frm" action="noticeSelect.do" method="post">
									<input type="hidden" id="noticeId" name="noticeId">	<!-- id=자바스크립트변수, name=자바에서쓰기위한변수 -->
								</form>
							</div>
								<script type="text/javascript">
									function noticeSelect(id) {	//선택된 행의 세부내역을 보기 위한 함수
										frm.noticeId.value = id;
										frm.submit();	//noticeSelect.do 로 이동
									}
								</script>
							</div> 
                        </div>
                    </div>
                </div>
            </div><br>
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!-- <script src="js/main2.js" /> -->
		</body>
	</html>