<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
.my_btn {
  background-color:gray;
  color: black;
  border: none;
  text-align: left;
  padding: 10px 450px;
  display :inline-block;
}
.my_btn2{

  color: black;
  border: none;
  text-align: left;
}
.topp {
	padding-top: 40px;
}
.bot2 {
	padding-bottom: 40px; 
}
.pa1 {
	padding-left: 400px;
	padding-right: 400px;
	padd
}

</style>
</head>
<body>
	
	<div>
			<div>
				<p>로고</p>
			</div>
			<div>
				<p>마이페이지</p>
				<p>로그인</p>
				<p>회원가입</p>
			</div>
		</div>

		<div>
			<ul>
				<li>홈</li>
				<li>투자</li>
				<li><a href="/workTogether/list">동업</a></li>
				<li>수요조사</li>
				<li><a href="/customer/list">고객센터</a></li>
			</ul>

			<div>
				<input placeholder="검색창">
				<button>검색버튼</button>
			</div>
		</div>

	<div class="topp">
		<h3>저희 사이트는 처음인가요?</h3>
	</div>
	
	<div class="topp" style="text-align: center;">
		<img src="/resources/img/이미지1.jpg" class="" alt="...">
	</div>
	<div class="topp">
		<h3>이용안내도</h3>
		<ul>
			<li>배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다</li>
		</ul>
		<p>배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다배고프다</p>
	</div>
	<div class="topp">
	<h3>Q&A</h3>
</div>
	
	<div class="dropdown topp pa1">
  <button class="dropdown-toggle my_btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    어지럽다
  </button>
  <div class="pa1">
  <ul class="dropdown-menu my_btn2 topp pa1">
    <li class="dropdown-item pa1" >
 	<h3>진짜 어지럽네 살려주세요</h3>   <p>나나나나나나나나난난ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffㄴㄴㄴㄴ</p>	
</li>
  </ul>
  </div>
</div>


<div class="dropdown topp ">
  <button class="dropdown-toggle my_btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    배고파요
  </button>
  <ul class="dropdown-menu my_btn2 topp pa2"  >
    <li><a class="dropdown-item ">Action</a></li>
  </ul>
</div>

<div class="topp">
	<h3>혹시, 이외에 궁금한 점이 있으신가요?</h3>
</div>

<!-- Button trigger modal -->
<div style="text-align: center;">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
 	쪽지로 문의하기
</button>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title fs-5" id="exampleModalLabel">문의하기</h3>               
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body topp">
         <label>ID</label>
        <input class="form-control " type="text" maxlength="20" >
      <div class="topp">
        <input class="form-control " type="text" maxlength="25" >
       </div> 
       <div class="topp">
        <textarea class="form-control " maxlength="300" style="height: 300px;">
        </textarea>
      	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>
        <button type="button" class="btn btn-primary">보내기</button>
      </div>
    </div>
  </div>
</div>

</body>
<footer>
	<div>
		<h1>COPYRIGHTFOOTER</h1>
	</div>
 </footer>


</html>