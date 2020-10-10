<%@page import="model.TeaDAO"%>
<%@page import="model.MemberTeaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
</body>
</html>