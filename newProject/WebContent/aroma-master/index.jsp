<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>세상에서 가장 작은 찻집, 차누</title>
	<link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="css/style.css">
  
</head>
<body>
<!-- 전역변수    -->
<%
String name = (String) session.getAttribute("name");

%>



  <!--================ Start Header Menu Area =================-->
	<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.jsp"><img src="img/chanu_logo3.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="index.jsp" style="font-size: 18px;">홈</a></li>
              <li class="nav-item"><a class="nav-link" href="category.jsp" style="font-size: 18px;"> 상품 목록</a></li>

			  <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false" style="font-size: 18px;">마이페이지</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="mypage.jsp">내 정보</a></li>
                  <li class="nav-item"><a class="nav-link" href="survey.jsp">차누's Pick</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.jsp">장바구니</a></li>

                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="contact.html" style="font-size: 18px;">고객센터</a></li>
            </ul>

            <ul class="nav-shop">

              
              <!-- <li>누구님 환영합니다.</li> -->
              <%if(name != null){ %>
                <%if(name != null){ %>
                    <li><%=name %>님 환영합니다.</li>
                <%}else{ %>
                <%} %>
                <li class="nav-item"><a class="button button-hero" href="../member_logout">로그아웃</a></li>
              <%}else{ %>
                <li class="nav-item"><a class="button button-hero" href="login.jsp">로그인</a></li>
                <li class="nav-item"><a class="button button-hero" href="register.jsp">회원가입</a></li>
              <%} %>
              
              <!-- <li class="nav-item"><a class="button button-hero" href="register.html">회원가입</a></li> -->
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
   <!--================ End Header Menu Area =================-->

   <main class="site-main">

      <!--================ Hero banner start =================-->
    <section class="hero-banner">
      <div class="container">
        <div class="row no-gutters align-items-center pt-60px">
          <div class="col-5 d-none d-sm-block">
            <div class="hero-banner__img">
              <img class="img-fluid" style="height: 760px "src="img/home/head_test1.jpg" alt="">
            </div>
          </div>
          <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
            <div class="hero-banner__content">
              <h4>세상에서 가장 작은 찻집, 차-누</h4>
              <h2>당신에게 맞는 차는 무엇일까요?</h2>
              <br>
              <h5>차를 접하는 이유를 어렵게 생각한게 아닐까요? 
                <br>
                <br>
                간단한 질문을 통해 당신만의 차를 추천해드립니다! </h5>
                <br>
              <a class="button button-hero" href="./NewFile2.jsp">차누's Pick</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--===========
      <!--================ Hero banner start =================-->

      <!--================ Hero Carousel start =================-->
    <section class="section-margin mt-0">
      <div class="owl-carousel owl-theme hero-carousel">
        <div class="hero-carousel__slide">
          <img src="img/home/test1.jpg" alt="" class="img-fluid">
          <a href="#" class="hero-carousel__slideOverlay">
            <h3>인기 차 5종 선물</h3>
            <p>프리미엄 선물세트</p>
          </a>
        </div>
        <div class="hero-carousel__slide">
          <img src="img/home/test2.jpg" alt="" class="img-fluid">
          <a href="#" class="hero-carousel__slideOverlay">
            <h3>꽃잎 차 </h3>
            <p>프리미엄 선물세트</p>
          </a>
        </div>
        <div class="hero-carousel__slide">
          <img src="img/home/test3.jpg" alt="" class="img-fluid">
          <a href="#" class="hero-carousel__slideOverlay">
            <h3>기념일 선물</h3>
            <p>프리미엄 선물세트</p>
          </a>
        </div>
      </div>
    </section>
      <!--================ Hero Carousel end =================-->

      <!-- ================ trending product section start ================= -->
      <section class="section-margin calc-60px">
         <div class="container">
            <div class="section-intro pb-60px">
               <p>가장 인기 있는 차</p>
               <h2>
                  Trending <span class="section-intro__style">Teas</span>
               </h2>
            </div>
            <div class="row">
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending1.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Accessories</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Quartz Belt Watch</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending2.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Beauty</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Women Freshwash</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending3.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Decor</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Room Flash Light</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending4.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Decor</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Room Flash Light</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending5.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Accessories</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Man Office Bag</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending6.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Kids Toy</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Charging Car</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending7.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Accessories</p>
                        <h4 class="card-product__title">
                           <a href="single-product.html">Blutooth Speaker</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="card text-center card-product">
                     <div class="card-product__img">
                        <img class="card-img" src="img/product/trending8.jpg" alt="">
                        <ul class="card-product__imgOverlay">
                           <li><button>
                                 <i class="ti-search"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-shopping-cart"></i>
                              </button></li>
                           <li><button>
                                 <i class="ti-heart"></i>
                              </button></li>
                        </ul>
                     </div>
                     <div class="card-body">
                        <p>Kids Toy</p>
                        <h4 class="card-product__title">
                           <a href="#">Charging Car</a>
                        </h4>
                        <p class="card-product__price">$150.00</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- ================ trending product section end ================= -->


      <!-- ================ offer section start ================= -->
    <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
      <div class="container">
        <div class="row">
          <div class="col-xl-6">
            <div class="offer__content text-center">
              <h3>최초 50% 할인</h3>
              <h4>입문자 세일</h4>
              <p>차누의 멤버가 되어보세요!</p>
              <a class="button button--active mt-3 mt-xl-4" href="login.html">구매 하기</a>
            </div>         
          </div>
          <div class="col-xl-6">
            <div class="offer__content text-center">
              <h3>구독 이벤트!</h3>
              <h4>추천된 차를 매월 받아보세요!</h4>
              <p>당신에게 추천된 차를 매월 정기 배송해드립니다!</p>
              <a class="button button--active mt-3 mt-xl-4" href="login.html">구독 신청</a>
            </div>         
          </div>
        </div>
      </div>
    </section>
      <!-- ================ offer section end ================= -->

      <!-- ================ Best Selling item  carousel ================= -->
          <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Best Gift</p>
          <h2>Premium <span class="section-intro__style">Gifts</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">
          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product1.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Accessories</p>
              <h4 class="card-product__title"><a href="single-product.html">Quartz Belt Watch</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product2.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Beauty</p>
              <h4 class="card-product__title"><a href="single-product.html">Women Freshwash</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product3.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product4.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product1.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Accessories</p>
              <h4 class="card-product__title"><a href="single-product.html">Quartz Belt Watch</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product2.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Beauty</p>
              <h4 class="card-product__title"><a href="single-product.html">Women Freshwash</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product3.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product4.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    



   </main>


   <!--================ Start footer Area  =================-->
  	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title large_title">차-누 </h4>
							<p>
								보다 많은 사람들이 다양한 차를 손쉽게 즐기는 것을 지향합니다. <br> 차를 통해 따듯함과 사랑을 나누는 아름다운 세상이 되길 원합니다.
							</p>
							<!-- <p>
								We aim to make it easier for more people to enjoy a variety of tea. I wish you a beautiful world where you can share warmth and love in your car.
							</p> -->
						</div>
					</div>
					<div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">바로가기</h4>
							<ul class="list">
								<li><a href="index.html">홈</a></li>
								<li><a href="category.html">상품페이지</a></li>
								<!-- <li><a href="#">Blog</a></li> -->
								
								<!-- <li><a href="#">Brand</a></li> -->
								
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h4 class="footer_title">괴짜개발자들</h4>
							<ul class="list instafeed d-flex flex-wrap">
								<li><img src="img/footer1.png" alt=""><p style="color: antiquewhite; text-align: center;"   > 조국희</p></li>
								<li><img src="img/footer2.png" alt=""><p style="color: antiquewhite; text-align: center;"> 강은수</p></li>
								<li><img src="img/footer3.png" alt=""><p style="color: antiquewhite; text-align: center;"> 조명성</p></li>
								<li><img src="img/footer4.png" alt=""><p style="color: antiquewhite; text-align: center;"> 유지훈</p></li>
								<li><img src="img/footer5.png" alt=""><p style="color: antiquewhite; text-align: center;"> 이건희</p></li>
							</ul>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">고객센터</h4>
							<div class="ml-40">
								<p class="sm-head">
									<span class="fa fa-location-arrow"></span>
									주소
								</p>
								<p>광주 남구 송암로 60 </p>
	
								<p class="sm-head">
									<span class="fa fa-phone"></span>
									전화번호
								</p>
								<p>
									010-0000-0000 <br>
									010-0000-0000 
								</p>
	
								<p class="sm-head">
									<span class="fa fa-envelope"></span>
									이메일
								</p>
								<p>
									smhrd@smhrd.com <br>
									www.smhrd.com
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row d-flex">
					<p class="col-lg-12 footer-text text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" style="color: rgb(221, 175, 175);">가짜개발자</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->



  <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="vendors/skrollr.min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="vendors/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/mail-script.js"></script>
  <script src="js/main.js"></script>
</body>
</html>