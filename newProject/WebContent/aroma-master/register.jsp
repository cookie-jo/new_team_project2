<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%> 
<!DOCTYPE html>
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
<link rel="stylesheet" href="vendors/linericon/style.css">
<link rel="stylesheet"
   href="vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">

<link rel="stylesheet" href="css/style.css">
</head> 
<body onload="init()">
   <%
      String name = (String) session.getAttribute("name");
   %>
   <!--================ Start Header Menu Area =================-->
   <header class="header_area">
      <div class="main_menu">
         <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
               <a class="navbar-brand logo_h" href="index.jsp"><img
                  src="img/logo.png" alt=""></a>
               <button class="navbar-toggler" type="button" data-toggle="collapse"
                  data-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                     class="icon-bar"></span>
               </button>
               <div class="collapse navbar-collapse offset"
                  id="navbarSupportedContent">
                  <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                     <li class="nav-item active"><a class="nav-link"
                        href="index.html">홈</a></li>
                     <li class="nav-item submenu dropdown"><a href="#"
                        class="nav-link dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false">상품페이지</a>
                        <ul class="dropdown-menu">
                           <li class="nav-item"><a class="nav-link"
                              href="category.html">상품목록</a></li>
                           <li class="nav-item"><a class="nav-link"
                              href="single-product.html">상품상세페이지</a></li>
                           <li class="nav-item"><a class="nav-link"
                              href="checkout.html">주문하기</a></li>
                           <li class="nav-item"><a class="nav-link"
                              href="confirmation.html">주문확인서</a></li>
                           <li class="nav-item"><a class="nav-link" href="cart.html">장바구니</a></li>
                        </ul></li>
                     <li class="nav-item submenu dropdown"><a href="#"
                        class="nav-link dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false">게시판</a>
                        <ul class="dropdown-menu">
                           <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                           <li class="nav-item"><a class="nav-link"
                              href="single-blog.html">Blog Details</a></li>
                        </ul></li>
                     <li class="nav-item submenu dropdown"><a href="#"
                        class="nav-link dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false">예</a>
                        <ul class="dropdown-menu">
                           <%if(name != null){ %>
                           <li class="nav-item"><a class="nav-link" href="../member_logout">로그아웃</a></li>
                        <%}else{ %>
                           <li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
                           <li class="nav-item"><a class="nav-link" href="register.jsp">회원가입</a></li>
                        <%} %>
                           <!-- <li class="nav-item"><a class="nav-link"
                              href="tracking-order.jsp">Tracking</a></li> -->
                        </ul></li>
                     <li class="nav-item"><a class="nav-link" href="contact.html">고객센터</a></li>
                  </ul>

                  <ul class="nav-shop">
                     <li class="nav-item"><button>
                           <i class="ti-search"></i>
                        </button></li>
                     <li class="nav-item"><button>
                           <i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span>
                        </button></li>
                     <!-- <li class="nav-item"><a class="button button-hero" href="login.html">로그인</a></li> -->
                  </ul>
               </div>
            </div>
         </nav>
      </div>
   </header>
   <!--================ End Header Menu Area =================-->

   <main class="site-main">


      <!-- ================ start banner area ================= -->
      <section class="blog-banner-area" id="category">
         <div class="container h-100">
            <div class="blog-banner">
               <div class="text-center">
                  <h1>회원 가입</h1>
                  <nav aria-label="breadcrumb" class="banner-breadcrumb">

                     <!-- 주석 처리 -->
                     <!--             <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">회원 가입</li>
            </ol> -->
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
                        <h4>이미 아이디가 있으신가요 ?</h4>
                        <p>로그인 해서 다양한 차누의 상품을 만나보세요</p>
                        <a class="button button-account" href="login.jsp">로그인 하러가기</a>
                     </div>
                  </div>
               </div>
               <!-- 회원가입 -->
               <div class="col-lg-6">
                  <div class="login_form_inner register_form_inner">
                     <h3>회원 가입하기</h3>
                     <form name="form" id="form" method="post"class="row login_form" action="../member_join"
                        id="register_form">
                        <div class="col-md-12 form-group">
                           <input type="text" class="form-control" id="name" name="name"
                              placeholder="이름을 입력하세요" onfocus="this.placeholder = ''"
                              onblur="this.placeholder = '이름을 입력하세요'">
                        </div>
                        <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="email" name="id"
                           placeholder="Id" onfocus="this.placeholder = ''"
                           onblur="this.placeholder = 'Email Address'">
                     </div>
                     <div class="col-md-12 form-group">
                        <input type="password" class="form-control" id="password"
                           name="pw" placeholder="Password"
                           onfocus="this.placeholder = ''"
                           onblur="this.placeholder = 'Password'">
                     </div>
                     <!--비밀번호 확인 text -> password 타입으로 수정 -->
                     <div class="col-md-12 form-group"> 
                        <input type="password" class="form-control" id="confirmPassword"   
                           name="tel" placeholder="TEL" onfocus="this.placeholder = ''"
                           onblur="this.placeholder = 'Confirm Password'">
                     </div>
                     
                     <!--주소 입력창 밖으로 튀어나와서 500px -> 355px로 수정 -->
                     <input type="button" onClick="goPopup()" value="주소검색" />
                     <div id="list"></div>
                     <div id="callBackDiv" class="forms_field">      
                        <div class="col-md-12 form-group">
                           <input type="text" placeholder="Addr" style="width: 355px;"
                              id="roadFullAddr" name="addr" class="form-control" />

                        </div>
                        <div class="col-md-12 form-group">

                           <input type="text" placeholder="Post Number"
                              style="width: 355px;" id="zipNo" name="post"
                              class="form-control" />
                        </div>

                        <div class="col-md-12 form-group"></div>
                        <div class="col-md-12 form-group">
                           <button type="submit" value="submit"
                              class="button button-register w-100">Register</button>
                        </div>
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
                        <h4 class="footer_title large_title">차누</h4>
                        <p>
                           보다 많은 사람들이 다양한 차를 손쉽게 즐기는 것을 지향합니다. <br> 차를 통해 따듯함과 사랑을
                           나누는 아름다운 세상이 되길 원합니다.
                        </p>
                        <p>We aim to make it easier for more people to enjoy a
                           variety of tea. I wish you a beautiful world where you can
                           share warmth and love in your car.</p>
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
                           <li><img src="img/footer1.png" alt="">
                           <p align="center">조국희</p></li>
                           <li><img src="img/footer2.png" alt="">
                           <p align="center">강은수</p></li>
                           <li><img src="img/footer3.png" alt="">
                           <p align="center">조명성</p></li>
                           <li><img src="img/footer4.png" alt="">
                           <p align="center">유지훈</p></li>
                           <li><img src="img/footer5.png" alt="">
                           <p align="center">이건희</p></li>
                        </ul>
                     </div>
                  </div>
                  <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
                     <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">고객센터</h4>
                        <div class="ml-40">
                           <p class="sm-head">
                              <span class="fa fa-location-arrow"></span> 주소
                           </p>
                           <p>광주 남구 송암로 60</p>

                           <p class="sm-head">
                              <span class="fa fa-phone"></span> 전화번호
                           </p>
                           <p>
                              010-0000-0000 <br> 010-0000-0000
                           </p>

                           <p class="sm-head">
                              <span class="fa fa-envelope"></span> 이메일
                           </p>
                           <p>
                              free@infoexample.com <br> www.infoexample.com
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
                     Copyright &copy;
                     <script>
                        document.write(new Date().getFullYear());
                     </script>
                     All rights reserved | This template is made with <i
                        class="fa fa-heart" aria-hidden="true"></i> by <a
                        href="https://colorlib.com" target="_blank">가짜개발자</a>
                     <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  </p>
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
      <script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
   // 주소검색을 수행할 팝업 페이지를 호출합니다.
   // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
   var pop = window.open("./jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   
   // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
      // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
      document.form.roadFullAddr.value = roadFullAddr;
   /*    document.form.roadAddrPart1.value = roadAddrPart1;
      document.form.roadAddrPart2.value = roadAddrPart2;
      document.form.addrDetail.value = addrDetail;
      document.form.engAddr.value = engAddr;
      document.form.jibunAddr.value = jibunAddr; */
      document.form.zipNo.value = zipNo;
/*       document.form.admCd.value = admCd;
      document.form.rnMgtSn.value = rnMgtSn;
      document.form.bdMgtSn.value = bdMgtSn;
      document.form.detBdNmList.value = detBdNmList; */
      /** 2017년 2월 추가제공 **/
/*       document.form.bdNm.value = bdNm;
      document.form.bdKdcd.value = bdKdcd;
      document.form.siNm.value = siNm;
      document.form.sggNm.value = sggNm;
      document.form.emdNm.value = emdNm;
      document.form.liNm.value = liNm;
      document.form.rn.value = rn;
      document.form.udrtYn.value = udrtYn;
      document.form.buldMnnm.value = buldMnnm;
      document.form.buldSlno.value = buldSlno;
      document.form.mtYn.value = mtYn;
      document.form.lnbrMnnm.value = lnbrMnnm;
      document.form.lnbrSlno.value = lnbrSlno; */
      /** 2017년 3월 추가제공 **/
/*       document.form.emdNo.value = emdNo; */
      
}



/**
 * Variables
 */
const signupButton = document.getElementById("signup-button"),
  loginButton = document.getElementById("login-button"),
  userForms = document.getElementById("user_options-forms");

/**
 * Add event listener to the "Sign Up" button
 */
signupButton.addEventListener(
  "click",
  () => {
    userForms.classList.remove("bounceRight");
    userForms.classList.add("bounceLeft");
  },
  false
);

/**
 * Add event listener to the "Login" button
 */
loginButton.addEventListener(
  "click",
  () => {
    userForms.classList.remove("bounceLeft");
    userForms.classList.add("bounceRight");
  },
  false
);
</script>
</body>
</html>