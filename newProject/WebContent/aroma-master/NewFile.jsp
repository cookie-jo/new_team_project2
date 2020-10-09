<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title>

<link rel = "stylesheet" href = "NewFile.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="./NewFile.js"></script>

	<link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  

  <link rel="stylesheet" href="css/style.css">


</head>
<body>
  <!--================ Start Header Menu Area =================-->
	<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="index.html">홈</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">상품페이지</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">상품목록</a></li>
                  <!-- <li class="nav-item"><a class="nav-link" href="single-product.html">상품상세페이지</a></li> -->
                  <li class="nav-item"><a class="nav-link" href="checkout.html">주문하기</a></li>
                  <li class="nav-item"><a class="nav-link" href="confirmation.html">주문확인서</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">장바구니</a></li>
                </ul>
							</li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">게시판</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
                </ul>
				</li>
							<li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">예</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
                  <li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="contact.html">고객센터</a></li>
            </ul>
            
			<!-- 장바구니, 상세보기, 로그인 버튼 주석처리 -->
           <!--  <ul class="nav-shop">
              <li class="nav-item"><button><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button> </li>
              <li class="nav-item"><a class="button button-hero" href="login.jsp">로그인</a></li>
            </ul> -->
          </div>
        </div>
      </nav>
    </div>
  </header>
	<!--================ End Header Menu Area =================-->


  <!-- ================ start banner area ================= -->	
  <section class="blog-banner-area" id="blog">
    <div class="container h-100">
      <div class="blog-banner">
        <div class="text-center">
          <h1>설문 조사</h1>
          <nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
<!--               <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Blog</li> -->
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </section>
  <!-- ================ end banner area ================= -->

<!-- 설문조사 버튼 시작 -->
<div class="rb-box">

  <!-- Radio Button Module -->
  <p>1. 성별을 체크해주세요</p>
  <div id="rb-1" class="rb">
    <div class="rb-tab rb-tab-active" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
       </div>
    </div>
  </div>
  <br>

  <!-- Radio Button Module -->
  <p>2. 평소에 피곤함을 자주 느끼시나요?</p>
  <div id="rb-2" class="rb">
    <div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>

  <!-- Radio Button Module -->
  <p>3. 평소에 집중력이 부족하신가요?</p>
  <div id="rb-3" class="rb">
    <div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>

  <!-- Radio Button Module -->
  <p>4. 평소에 불면증이 있으신가요?</p>
  <div id="rb-4" class="rb">
    <div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>

  <!-- Radio Button Module -->
  <p>5. 평소에 면역력이 약하시거나 감기에 잘 걸리시나요?</p>
  <div id="rb-5" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>

  <!-- Radio Button Module -->
  <p>6. 평소 자주 붓거나 염증에 시달리시나요?</p>
  <div id="rb-6" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>
  
  <!-- Radio Button Module -->
  <p>7. 평소 고혈압, 당뇨 등의 성인병을 앓고 계신가요? </p>
  <div id="rb-7" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>
  
    <!-- Radio Button Module -->
  <p>8. 현재 다이어트를 하고 계시거나 할 예정이신가요?</p>
  <div id="rb-8" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>
  
    <!-- Radio Button Module -->
  <p>9. 평소 소화기능이 약하시거나 변비를 앓고 계신가요? </p>
  <div id="rb-9" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>
  
    <!-- Radio Button Module -->
  <p>10. 평소에 스트레스가 많으신가요? </p>
  <div id="rb-10" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>
  
    <!-- Radio Button Module -->
  <p>11. 평소에 음주를 자주 하시나요?</p>
  <div id="rb-11" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  <br>
  
    <!-- Radio Button Module -->
  <p>12. 탈모가 있으신가요?</p>
  <div id="rb-12" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>
  
    <!-- Radio Button Module -->
  <p>13. 흡연자이신가요?</p>
  <div id="rb-13" class="rb">
    <div class="rb-tab" data-value="4">
      <div class="rb-spot">
        <span class="rb-txt">1</span>
      </div>
    </div><div class="rb-tab" data-value="2">
      <div class="rb-spot">
        <span class="rb-txt">2</span>
      </div>
    </div><div class="rb-tab" data-value="5">
      <div class="rb-spot">
        <span class="rb-txt">3</span>
      </div>
    </div><div class="rb-tab" data-value="1">
      <div class="rb-spot">
        <span class="rb-txt">4</span>
      </div>
    </div><div class="rb-tab rb-tab-active" data-value="3">
      <div class="rb-spot">
        <span class="rb-txt">5</span>
      </div>
    </div>
  </div>

  <!-- Button -->
  <div class="button-box radio-button">
    <button class="button trigger">Submit!</button>
  </div>

</div>

  
  <!--================ Start footer Area  =================-->	
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title large_title">차누 </h4>
							<p>
								보다 많은 사람들이 다양한 차를 손쉽게 즐기는 것을 지향합니다. <br> 차를 통해 따듯함과 사랑을 나누는 아름다운 세상이 되길 원합니다.
							</p>
							<p>
								We aim to make it easier for more people to enjoy a variety of tea. I wish you a beautiful world where you can share warmth and love in your car.
							</p>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">바로가기</h4>
							<ul class="list">
								<li><a href="#">홈</a></li>
								<li><a href="#">상품페이지</a></li>
								<!-- <li><a href="#">Blog</a></li> -->
								<li><a href="#">게시판</a></li>
								<!-- <li><a href="#">Brand</a></li> -->
								<li><a href="#">고객센터</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h4 class="footer_title">괴짜개발자들</h4>
							<ul class="list instafeed d-flex flex-wrap">
								<li><img src="img/footer1.png" alt=""><p align = "center"> 조국희</p></li>
								<li><img src="img/footer2.png" alt=""><p align = "center"> 강은수</p></li>
								<li><img src="img/footer3.png" alt=""><p align = "center"> 조명성</p></li>
								<li><img src="img/footer4.png" alt=""><p align = "center"> 유지훈</p></li>
								<li><img src="img/footer5.png" alt=""><p align = "center"> 이건희</p></li>
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
									free@infoexample.com <br>
									www.infoexample.com
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">가짜개발자</a>
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