<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home delivery</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.minss.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.minss.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/styless.css" type="text/css">
    
    <script type="text/javascript">
	 function cartbtn() {
		  if (confirm("배달 요청을 하시겠습니까?")) {
              // 확인 버튼 클릭 시 동작
              prompt("몇개를 주문하시겠습니까?")
              alert("감사합니다. 담당공무원이 오늘 중 배달 할 예정입니다.");
          } else {
              // 취소 버튼 클릭 시 동작
              alert("배달요청을 취소했습니다.");
          }
	 } 
</script>
</head>

<body>
	 <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Home Delivery</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">모든제품</li>
                            <li data-filter=".oranges">식자재</li>
                            <li data-filter=".fresh-meat">생필품</li>
                            <li data-filter=".vegetables">방역품</li>
                            <li data-filter=".fastfood">의학·약품</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr29.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">유기농 토마토</a></h6>
                            <h5>20,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr5.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">로라딘 연질캡슐</a></h6>
                            <h5>4,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetablest">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr13.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">산소포화도 측정기 (1인 1개)</a></h6>
                            <h5>무료</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr25.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">계란 30판</a></h6>
                            <h5>7,200원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr15.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">라텍스 일회용 장갑 100매</a></h6>
                            <h5>6,500원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr28.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">배추</a></h6>
                            <h5>3,800원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr11.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">KF94 새부리형 마스크</a></h6>
                            <h5>900원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr19.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">크리넥스 키친타올 140매 2팩</a></h6>
                            <h5>17,900원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">타이레놀 500밀리그램</a></h6>
                            <h5>2,500원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr26.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">두부</a></h6>
                            <h5>3,700원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr8.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">응급약 세트</a></h6>
                            <h5>39,900원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/prr17.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><button class="fa fa-shopping-cart" onclick="javascript:cartbtn()"></button></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">초코파이</a></h6>
                            <h5>5,700원</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

     <!-- Categories Section Begin -->
     <section class="categories">
        <div class="container">
            <div class="section-title">
                <h2>TOP Product</h2>
            </div>
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
                            <h5><a href="#"></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
                            <h5><a href="#"></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
                            <h5><a href="#"></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
                            <h5><a href="#"></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                            <h5><a href="#"></a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><br>
    <br>
    <!-- Categories Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.minss.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main3.js"></script>
</body>
</html>