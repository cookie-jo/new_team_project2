## JSP&Servlet MVC(model2) 쇼핑몰 + 차(茶) 추천서비스 구현

### Introduction
19F/W 아우터 제품들을 구매할 수 있는 20~30대 여성을 대상으로 하는 의류 쇼핑몰 제작


### Technical Specification
image


### Required Library

- ojdbc6.jar


### Requirements Specification
회원 가입

로그인, 로그아웃, 탈퇴

게시글 등록, 수정, 삭제, 조회 기능

게시글 답글 등록, 수정, 삭제 기능

게시글 댓글 등록, 수정, 삭제 기능 및 대댓글 등록, 수정, 삭제

게시글 관련 첨부파일(이미지) 업로드, 삭제 기능

게시글 편집 기능


### Database Modeling
image


### 주요 기능 설명
사이트 메인화면
image

메인화면에서는 가장 최근에 등록된 상품과 가장 판매량이 높은 상품을 확인할 수 있습니다.



***로그인
image image


***회원가입
image

회원가입은 우편번호 api를 사용해 주소를 입력받을 수 있게 하였습니다.



***상품 목록 조회
image

한 페이지에 상품을 8개씩 보여주게 하였고
상품이미지, 상품명, 상품가격을 보여주며, 페이징 처리를 하였습니다.(페이지를 여러개만들어서 버튼누르면 페이지 이동하는 방식)



***상품 상세 조회
image

제품 상세조회 페이지에서는 제품에 대한 이미지와 해당 제품에 달린 리뷰를 확인할 수 있습니다.



***장바구니를 통한 구매
image

장바구니 페이지에서는 상품의 수량을 변경하거나 장바구니에서 아이템을 삭제할 수 있습니다.  리뷰를 작성할 수 있습니다.
