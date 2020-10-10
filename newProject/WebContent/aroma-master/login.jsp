<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>세상에서 가장 작은 찻집, 차누 </title>
   <link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
   <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
   <link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
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
                  <li class="nav-item"><a class="nav-link" href="./NewFile2.jsp">차누's Pick</a></li>
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
  
  <!-- ================ start banner area ================= -->   
   <section class="blog-banner-area" id="category">
      <div class="container h-100">
         <div class="blog-banner">
            <div class="text-center">
               <h1>로그인 / 회원가입</h1>
               <nav aria-label="breadcrumb" class="banner-breadcrumb">
               
               <!-- 주석 처리 -->
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">로그인 / 회원가입</li>
            </ol> 
          </nav>
            </div>
         </div>
    </div>
   </section>
   <!-- ================ end banner area ================= -->
  
  <!--================Login Box Area =================-->
   <section class="login_box_area section-margin">
      <div class="container">
         <div class="row">
            <div class="col-lg-6">
               <div class="login_box_img">
                  <div class="hover">
                     <h4>첫 방문이신가요?</h4>
                     <p>회원 가입 후 다양한 차누 상품을 만나보세요</p>
                     <a class="button button-account" href="register.jsp">회원가입</a>
                  </div>
               </div>
            </div>
<!-- 로그인 -->
            <div class="col-lg-6">
               <div class="login_form_inner">
                  <h3>로그인</h3>
                  <form class="row login_form" action="../member_login" id="contactForm" >
                     <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="name" name="id" placeholder="ID를 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ID를 입력해주세요'">
                     </div>
                     <div class="col-md-12 form-group">
                        <input type="password" class="form-control" id="name" name="pw" placeholder="PW를 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = 'PW를 입력해주세요'">
                     </div>
                     <div class="col-md-12 form-group">
                        <div class="creat_account">
                           <input type="checkbox" id="f-option2" name="selector">
                           <label for="f-option2">로그인 상태 유지</label>
                        </div>
                     </div>
                     <div class="col-md-12 form-group">
                        <button type="submit" value="submit" class="button button-login w-100">로그인</button>
                        <a href="#">비밀번호 찾기</a>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================End Login Box Area =================-->



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