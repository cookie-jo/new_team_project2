<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/login_join_page.css">  
</head>
<body onload="init()">


<section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">아이디가 없으신가요?</h2>
        <p class="user_unregistered-text">간단한 입력을 통해 차누와 따듯한 차 한 잔 어떠세요 ? </p>
        <button class="user_unregistered-signup" id="signup-button">회원가입</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">차누 멤버신가요?</h2>
        <p class="user_registered-text">오늘의 차를 따듯하게 우려 내었답니다. 어서오세요!</p>
        <button class="user_registered-login" id="login-button">로그인</button>
      </div>
    </div>
    
    
<!-- 로그인 -->    
    <div class="user_options-forms" id="user_options-forms">
      <div class="user_forms-login">
        <h2 class="forms_title">로그인</h2>
        
        <!----------------------------------------로그인 정보 입력 후 member_login로 정보 넘기는 부분----------------------------->
        
        <form class="forms_form" action="../member_login">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="아이디를 입력하세요." name="id" class="forms_field-input" required autofocus />
            </div>
            <div class="forms_field">
              <input type="password" placeholder="비밀번호를 입력하세요." name="pw" class="forms_field-input" required />
            </div>
            
        <!----------------------------------------로그인 정보 입력 후 member_login로 정보 넘기는 부분----------------------------->
    				
          </fieldset>
          <div class="forms_buttons">
            <button type="button" class="forms_buttons-forgot"><!-- 비밀번호 찾기 --></button>
            <input type="submit" value="Log In" class="forms_buttons-action">
          </div>
        </form>
        
      </div>
      
<!-- 회원가입 -->
      <div class="user_forms-signup">
        <h2 class="forms_title">회원 가입</h2>
        
        
        <!-- <form class="forms_form" name="form" id="form" method="post"> -->
        <!-- servlet이 실행됬을때는 webContent 바로 아래서 실행되기때문에 찾을라면 webContent까지 올라가야해요 -->
        <!----------------------------------  회원가입 정보 입력 후 member_join으로 넘기는 부분--------------------------------------->
        
        <form action = "../member_join" class="forms_form" name="form" id="form" method="post">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
            <!-- <input type="text" placeholder="이름" class="forms_field-input" required /> -->
              <input type="text" placeholder="이름" name="name" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input type="text" placeholder="아이디" name="id" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input type="password" placeholder="비밀번호" name="pw" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input type="text" placeholder="전화번호" name="tel" class="forms_field-input" required />
            <div class="forms_field">
              
<!-- <form name="form" id="form" method="post"> -->

	<input type="button" onClick="goPopup();" class="user_registered-zip" value="주소검색" />
	<div id="list"></div>
	<div id="callBackDiv" class="forms_field">		
			<input type="text"  placeholder="주소" style="width:500px;" id="roadFullAddr"  name="addr" class="forms_field-input" />
		
	</div>
	<div id="callBackDiv" class="forms_field">
	
			<input type="text"  placeholder="우편번호" style="width:500px;" id="zipNo"  name="post" class="forms_field-input" />
	</div>
	
<!-- </form> -->
        <!----------------------------------  회원가입 정보 입력 후 member_join으로 넘기는 부분--------------------------------------->				
            </div>
            
            
            </div>
          </fieldset>
          <div class="forms_buttons">
            <input type="submit" value="회원가입" class="forms_buttons-action">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>


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
	/* 	document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr; */
		document.form.zipNo.value = zipNo;
/* 		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
		document.form.detBdNmList.value = detBdNmList; */
		/** 2017년 2월 추가제공 **/
/* 		document.form.bdNm.value = bdNm;
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
/* 		document.form.emdNo.value = emdNo; */
		
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