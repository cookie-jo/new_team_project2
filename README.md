# JSP&Servlet MVC(model2) 쇼핑몰 + 차(茶) 추천서비스

## Introduction
성분데이터를 활용한 맞춤형 차(茶) 추천서비스
<br>
120여 종류의 차(茶) 상품을 판매하는 쇼핑몰 + 추천서비스
<br><br>


## Technical Specification
![2차팀프로젝트 기술스택](https://user-images.githubusercontent.com/67885590/101494285-7845dc80-39aa-11eb-89f4-c9b2014ab7d0.PNG)
<br>


## Required Library
- ojdbc6.jar
<br>

## Requirements Specification
- 회원 가입

- 로그인, 로그아웃, 탈퇴

- 상품목록, 상품상세, 리뷰

- 장바구니, 주문배송, 결제

- 설문조사, 설문조사결과
<br>

## Database Modeling
![2차 ERD](https://user-images.githubusercontent.com/67885590/101495689-2aca6f00-39ac-11eb-81ae-c3f72170cc60.PNG)
<br>


## 주요 기능 설명
### ***사이트 메인화면***
<br>

![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/67885590/101592851-4415fe80-3a32-11eb-9784-8183dbdd1e0b.gif)

<br>

> 메인화면은 주요기능인 차(茶)추천서비스를 이용할 수 있도록 배치하였고, 일반상품, 구독서비스(수익구조), 고급상품, 회사 팀소개 순으로 나열하였습니다.

<br>


### ***회원가입***
<br>

![ezgif com-gif-maker](https://user-images.githubusercontent.com/67885590/101592896-5c861900-3a32-11eb-9c84-ad15310f0269.gif)

<br>

> 회원가입은 우편번호 api를 사용해 주소를 입력받을 수 있게 하였습니다.

<br>

### ***로그인***
<br>

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/67885590/101592981-87706d00-3a32-11eb-9a9f-c3f079c7ee38.gif)

<br>

> 로그인을 하면 메인화면으로 이동합니다.

<br>

### ***상품 목록 조회***
<br>

![ezgif com-gif-maker (3)](https://user-images.githubusercontent.com/67885590/101592989-8d664e00-3a32-11eb-9df5-7a602f333bc9.gif)

<br>

> 한 페이지에 상품을 8개씩 보여주게 하였고 jsp파일을 여러개 만드는 방법으로 페이징 처리를 하였습니다.

<br>

### ***설문조사 (주요기능: 콘텐츠기반 필터링)***
<br>

![ezgif com-gif-maker (7)survey](https://user-images.githubusercontent.com/67885590/101596160-f603f980-3a37-11eb-959c-c4872ad68c55.gif)

<br>

> 설문조사 결과를 오라클DB에 저장하고 그 값을 자바의 ProcessBuilder를 사용하여 파이썬으로 넘긴 후 코사인유사도에 따라서 나열된 결과값을 다시 오라클DB에 저장하게됩니다.

<br>

### ***상품 상세 조회***
<br>

![ezgif com-gif-maker (4)review](https://user-images.githubusercontent.com/67885590/101596226-0d42e700-3a38-11eb-86f1-50ce3cca005a.gif)

<br>

> 제품 상세조회 페이지에서는 제품에 대한 이미지와 해당 제품에 달린 리뷰를 작성할 수 있습니다.

<br>

### ***장바구니에 담기, 결제***
<br>

![ezgif com-gif-maker (5)detail](https://user-images.githubusercontent.com/67885590/101599816-bcce8800-3a3d-11eb-946f-01c343738011.gif)

<br>

> 장바구니는 여러개를 담을 수 있게 Session을 사용하였습니다. 결제는 KCP인증 및 사업자 등록을 해야하는 문제가 있어 지금은 할 수 가 없어서 형식만 만들었습니다.

<br>

### ***마이페이지 확인***
<br>

![ezgif com-gif-maker (7)mypage](https://user-images.githubusercontent.com/67885590/101599839-c526c300-3a3d-11eb-9bac-c28fd807c6ea.gif)

<br>

> myPage에 들어가면 회원의 정보와 설문결과를 볼 수 있습니다.

<br>
