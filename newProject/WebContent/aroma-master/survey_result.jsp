<%@page import="model.TeaDAO"%>
<%@page import="model.MemberTeaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.surveyVO"%>
<%@page import="model.surveyDAO"%>   
<%@page import="model.memberDAO"%>   
<%@page import="model.memberVO"%>   
<%@page import="java.util.ArrayList"%>
    
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


	<% 
		//String member_id = (String)session.getAttribute("id"); //로그인한 회원 아이디를 가져오는 부분
		//String tea_id = (String)session.getAttribute("tea"); //차 정보를 가져오는 부분 근데 차 정보 어디서 가져옴??
		
			// 세션으로 받아오는 것은 tea_id를 못가져오므로
		//survey_result_1  db에  저장된 값을 가져와야함.
				
		String id = (String)session.getAttribute("id"); //로그인한 회원 아이디 세션에서 가져옴
		System.out.println(id); //아이디가 잘가져와지는지 확인용
		
		TeaDAO dao = new TeaDAO(); //dao 객체생성
		MemberTeaVO vo = dao.getMemberTea(id);//로그인 한 회원아이디 정보와 survey_result_1 테이블 회원id 같은지 비교, 같으면  survey_result_1 안에 있는 회원id, 차id 데이터 가져와서 vo에 담아줌
		MemberTeaVO info = dao.teaRecommend(vo); //info에 회원id, 회원name, 차id, 차name, 차img 담아줌
		
		System.out.println(info.getMember_id());
		System.out.println(info.getMember_name());
		System.out.println(info.getTea_id());
		System.out.println(info.getTea_img());
		System.out.println(info.getTea_name());
		System.out.println(info.getTea_price());
		System.out.println(info.getSide_effect());
	%>

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
      	<div class="col-md-6 col-lg-4 col-xl-3">
	   <div class="card text-center card-product">
	      <div class="card-product__img">
	      <h1><%=info.getMember_name() %>님 추천차</h1><!--회원명-->
	         <img class="card-img" src="<%=info.getTea_img() %>" alt=""><!--차 이미지-->
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
	            <a href="#">제품 명 : <%=info.getTea_name() %></a><!--차 이름-->
	         </h4>
	         <p class="card-product__price">가격 : <%=info.getTea_price() %></p><!--가격-->
	         <p class="card-product__price">부작용 : <%=info.getSide_effect() %></p><!--부작용-->
	      </div>
	   </div>
	</div>
      
    </div>
  </section>
  <!-- ================ end banner area ================= -->


  
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</body>
</html>