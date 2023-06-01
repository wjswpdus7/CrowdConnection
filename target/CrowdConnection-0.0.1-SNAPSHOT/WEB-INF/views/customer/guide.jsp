<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/resources/css/css.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
.topp {
	padding-top: 40px;
}
.topp2 {
	padding-bottom: 30px;
}
.bot2 {
	padding-bottom: 40px; 
}
.pa1 {
	padding-left: 400px;
	padding-right: 400px;
	padd
}


.g2{
	width: 1300px;
  margin-left: auto;
  margin-right: auto;
}
.layout{
    max-width: 800px;
    margin: 0 auto;
}

body{
  font-family: 'Open Sans', sans-serif;
}

details{
  background-color: #ffffff;
  color: #000000;
  font-size: 1.5rem;
    border: 1px solid #9fa4a8;
  border-radius: 10px;
  margin-bottom: 20px;
}

summary {
  padding: .5em 1.3rem;
  list-style: none;
  display: flex;
  justify-content: space-between;  
  transition: height 1s ease;
  color: black;
}

summary::-webkit-details-marker {
  display: none;
}

summary:after{
  content: "\002B";
}

details[open] summary {
    border-bottom: 1px solid #aaa;
    margin-bottom: .5em;
}

details[open] summary:after{
  content: "\00D7";
}

details[open] div{
  padding: .5em 1em;
}


</style>
</head>
<body>

	<header>
		<div class="header_wrap">
			<div class="top">
				<a href="../"><img src="/resources/img/logo.png"></a> <a
					href="" id="new_iv">투자신청하기</a> <a href="" id="sign_up">회원가입</a> <a
					href="" id="sign_in">로그인</a>
			</div>
			<div class="gnb">
				<div class="gnb_button">
					<a href="../">홈</a> <a href="../investment/list">투자</a> <a
						href="../partner/list">동업</a> <a href="">수요조사</a> <a
						href="../customer/list">고객센터</a>
				</div>
				<div class="search_box">
					<input type="text" placeholder="검색창"> <img
						src="/resources/img/search.png">
				</div>
			</div>
		</div>
	</header>
	
	<div class="topp">
		<h3>저희 사이트는 처음인가요?</h3>
	</div>
	
	<div class="topp" style="text-align: center;">
		<img src="/resources/img/이미지1.jpg" class="" alt="...">
	</div>
	<div class="topp">
		<h3>이용안내도</h3>
		<ul>
			<li>WELCOME CrowdConnetion</li>
		</ul>
		<p>저희</p>
	</div>
	<div class="topp">
	<h1 class="topp2">FAQ</h1>
</div>
	
  <div>
  <details>
  <summary>펀딩이란 무엇인가요?</summary>
  <div>
	나도몰라용
  </div>
</details>
</div>

  <div>
  <details>
  <summary>크라우드 펀딩의 차이점은?</summary>
  <div>
 The tags <em>details</em> and <em>summary</em> have you covered.
  </div>
</details>
</div>

  <div>
  <details>
  <summary>펀딩이란 무엇인가요?</summary>
  <div>
	나도몰라용
  </div>
</details>
</div>

  <div>
  <details>
  <summary>펀딩이란 무엇인가요?</summary>
  <div>
	나도몰라용
  </div>
</details>
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
        <input class="form-control " type="text" maxlength="20">
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

 <div> 
       <div class="footer">
       		<ul class="clearfix c2">
       			<li><a href="#">투자</a></li>
       			<li><a href="#">동업</a></li>
       			<li><a href="#">공지사항</a></li>
       			<li><a href="#">홈으로</a></li>
       		</ul>
       		

       		<span>금융문의: 1000-0000,1001-1001</span>
			<span>이메일 상담 help@naver.com</span><br>
			<span>펀딩 상품의 경우 크라우드펀딩는 투자중개자이며 펀딩 당사자가 아닙니다.</span><br>
			<span>해당되는 상품의 경우 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span> <br>
       		
       		
       		<address class="c2">
       			<strong>copyrightwebstoryboyAll rights Reserved.</strong>
       		</address>
       </div>
      </div> 
</body>
</html>