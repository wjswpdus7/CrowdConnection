<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/invest_list.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<style>
body {
	width: 1200;
	margin: auto;
}

#maintext {
	position: relative;
	text-align: center;
}

#carouselbackground {
	width: 1200px;
	margin: 0 auto;
}

.card-img-top {
	background-size: contain;
	height:256px;
	border-radius: 20px;
}

.card-body{
	height:144px;
}

.card {
	height: 380px;
    width: 320px;
   
}

hr {
	margin: 0px;
}

.carousel-control-prev-icon, .carousel-control-next-icon {
	height: 50px;
	width: 50px;
	outline: black;
	background-color: rgba(0, 0, 0, 0.3);
	background-size: 100%, 100%;
	border-radius: 50%;
	border: 1px solid black;
}

.carousel-control-next, .carousel-control-prev {
    position: absolute;
    top: 0;
    bottom: 0;
    z-index: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 4%;
    padding: 0;
    color: #fff;
    text-align: center;
    background: 0 0;
    border: 0;
    opacity: .5;
    transition: opacity .15s ease;
}
.col{
	
	width: 30%;
	 border-radius: 20px;
}



#magazine {
	width: 1000px;
	margin: 0 auto;
	
}


.maleft {
	margin-left: 0px;
}

.maright {
	margin-right: 0px;
}

#maintext h1{
	font-weight:bold;
	margin:20px;
}

#maintext p {
	font-size:16px;
}

.mainbutton{
	    font-size: 16px;
    padding: 12px;
    border: 0.8px solid #bbb;
    border-radius: 23px;
    background-color: white;
    margin: 10px;
}

#carouselbackground h1{
	margin:20px;
	margin-left:120px;
	font-weight: 700;
}


#aboutfunding{
	width: 100%;
	height: 350px;
	text-align: center;
	margin:20px;
	margin-left:0px;
}

#aboutfunding img{
		width:1000px;
		border-radius: 40px;
		    margin-top: 25px;
}


.font{
	font-size:14px;
}

.count{
	font-size:20px;
	font-weight:bold;
	margin-left:120px;
}

#magazintitle{
	font-size:30px;
	font-weight:bold;
}
#magazinsub{
	font-size:16px;
}
.magazine{
	display:inline-block;
	width: 240px;
	margin: 5px;
	 border: 1.8px solid #c3c4c7;
    border-radius: 10px;
}
img.magaimg {
	width:238px;
	    border-radius: 10px;
	
}
.magazinetitle{
	font-size: 16px;
    font-weight: 600;
	
}

.magazinearticle{
	    font-size: 16px;
    font-weight: 400;
}


.maincard{
	    width: 300px;
	border:1px solid #dee2e6;
	    border-radius: 15px;
}

.cardimg{
	width: 297px;
    height: 190px;
	border-radius:15px 15px 0px 0px;
	 
}

.cardtitle{
	font-size:24px;
	font-weight: 700;
}

.card-text-sub{
	font-size:14px;
}

#maincards{
	    width: 1000px;
    display: flex;
    margin: 0 auto;
    flex-wrap: nowrap;
    justify-content: space-between;
}

#poptext{
	width: 1000px;
    margin: 0 auto;
    margin-bottom: 20px;
	
}
</style>
</head>
<body>
<header>
        <div class="header_wrap">
            <div class="header_top">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <c:if test="${sessionScope.member==null}">
                       <a href="/login" id="new_iv" onClick="alert('먼저 로그인해 주세요.')">투자신청하기</a>
                       <a href="/signup" id="sign_up">회원가입</a>
                       <a href="/login" id="sign_in">로그인</a>
                    </c:if>
                    <c:if test="${sessionScope.member!=null}">
                       <a href="/writeselect" id="new_iv">투자신청하기</a>
                  <a href="/mypage/list" id="my_page">마이페이지</a>
                  <p class="user_name">${sessionScope.member.name}님 환영합니다!</p>
               </c:if>
            </div>
            <div class="gnb">
                <div class="gnb_button">
                    <a href="../">홈</a>
                    <a href="../investment/list">투자</a>
                    <a href="../partner/list">동업</a>
                    <a href="../survey/list">수요조사</a>
                    
                </div>
                <div class="dropdown" >
                   <a href="#" class="dropbtn">고객센터</a>
                   	     <div class="dropdown-content">
                   	        <a href="/notice/list">공지사항</a>
        					<a href="/notice/detail">게시판</a>
        					<a href="/notice/guide">투자소개</a>
        				</div>
                  	 </div>
                  	     <div class="search_box">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
                  	 </div>
            
    </header>

<article>
<section>
	
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
	
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="3000">
				<img src="/resources/img/메인이미지1.png" class="d-block w-100 h-100"
					alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img src="/resources/img/메인이미지2.png" class="d-block w-100 h-100"
					alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img src="/resources/img/메인이미지3.png" class="d-block w-100 h-100"
					alt="...">
			</div>
		</div>
	</div>
	</section>
	
	<section>
	<div id="maintext">
		<h1>CrowdConnection에서 시작해보세요</h1>
		<p>CrowdConnection은 창업을 원하는 사람들을 연결해 주는 곳입니다.</p>

		<button class="mainbutton" onclick="location.href='signup'">Sign Up Now</button>
		<button class="mainbutton" onclick="location.href='notice/guide'">Learn More</button>
	</div>


				
					<h1 id=poptext>Popular Project</h1>
					<div id="maincards">
					
							<div class="maincard">
								<div>
									<img class="cardimg" src="/resources/img/image1.png">
								</div>
								<div>
									<h3 style="text-align: center;">
										<span class="card-title">(기업)New UAV PRODUCT PROJECT </span><br>
									</h3>
									<div style="text-align: center;">
									<p class="card-text">
										<span class="font">모금액: 198,240,000</span><span class="count">56%</span>  <br>
									</p>
									</div>
								</div>
							</div>
								<div class="maincard">
								<div>
									<img class="cardimg" src="/resources/img/image7.png">
								</div>
								<div>
									<h3 style="text-align: center;">
										<span class="card-title">(기업)쿠마오크라우드 2호점 </span><br>
									</h3>
									<div style="text-align: center;">
									<p class="card-text">
										<span class="font">모금액: 146,000,000</span><span class="count">36%</span>  <br>
									</p>
									</div>
								</div>
							</div>
								<div class="maincard">
								<div>
									<img class="cardimg" src="/resources/img/image8.jpg">
								</div>
								<div>
									<h3 style="text-align: center;">
										<span class="card-title">(개인)뉴 차이니스 퀴진</span><br>
									</h3>
									<div style="text-align: center;">
									<p class="card-text">
										<span class="font">인원구함</span><span class="count">모집중</span>  <br>
									</p>
									</div>
								</div>
							</div>
					</div>
					
	

	<div id="aboutfunding">
		<a href="notice/guide"><img src="/resources/img/메인이미지4.png"></a>

	</div>
	</section>
<section>
	<div id="magazine">
		<h1 id="magazintitle">매거진</h1>
		<p id="magazinsub">크라우드커넥션이 제공하는 유용한 정보를 만나보세요.</p>
		
		<div style=" margin-bottom: 30px;">
			<div class="magazine" style="margin-left: 0px;">
				<div class="magazineimg">
				<img class="magaimg" src="/resources/img/매거진1.png">
				</div>
				<p class="magazinetitle">[지원사업] 2023년 관광기업 크라우드펀딩 지원사업</p>
				<br>
				<p class="magazinearticle">관광분야 참여기업을 모집합니다.</p>
			</div>
			
			<div class="magazine">
				<div class="magazineimg">
				<img  class="magaimg" src="/resources/img/매거진2.png">
				</div>
				<p class="magazinetitle">2022년 크라우드펀딩 연계 스타트업 지원사업 IR데모데이</p>
				<br>
				<p class="magazinearticle">데모데이가 10월27일 개최됩니다!</p>
			</div>
			<div class="magazine">
				<div class="magazineimg">
				<img class="magaimg" src="/resources/img/매거진3.jpg">
				</div>
				<p class="magazinetitle">[지원사업] 2022년 기술창업 지원사업</p>
				<br>
				<p class="magazinearticle">경남소재 창업기업을 찾습니다.</p>
			</div>
			<div class="magazine" style="margin-right: 0px;">
				<div class="magazineimg">
				<img class="magaimg" src="/resources/img/매거진4.png">
				</div>
				<p class="magazinetitle">[지원사업] 2022년 관광기업 크라우드펀딩 지원사업</p>
				<br>
				<p class="magazinearticle">관광분야 참여기업을 모집합니다.</p>
			</div>
			</div>
			
		<!-- <div>
			<div class="magazine" style="margin-left: 0px;"><p>title</p>
				<br>
				<p>article></div>
			<div class="magazine"><p>title</p>
				<br>
				<p>article></div>
			<div class="magazine"><p>title</p>
				<br>
				<p>article></div>
				<div class="magazine" style="margin-right: 0px;">
			<p>title</p>
				<br>
				<p>article></div>
					
		</div> -->
		
	</div>
	</section>
	</article>

<div> 
  <div class="footer">      
   <div class="container">
      <div class="top"><a href="../"><img src="/resources/img/footimg.png" ></a></div>
   <div class="s1">
      <div>
                <div>
                <h2 class="TM12">Team Members</h2>
              </div>
                <div class="ttt1">
                   <p>유형주 : gadadaa@naver.com</p>
            </div>
            <div class="ttt2">
                   <p>전제연 : gadadaa@naver.com</p>
            </div>
            <div class="ttt2">
                   <p>이치수 : gadadaa@naver.com</p>
            </div>
            <div class="ttt2">
                   <p>이시호 : gadadaa@naver.com</p>
            </div>      
      </div>
   </div>
         <div class="s2">
              <div>
                <h2 class="TM12">Team Member Github</h2>
              </div>
              <div class="image-container">
                <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Yu Hyeong Ju</p>
                </div>
                <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Jeon Je Yeon</p>
                </div>
                <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Lee Chi Su</p>
                </div>
                  <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Lee Si Ho</p>
                </div>
             </div>
          </div>
      
   </div>   
  </div>
             <address class="cop">
                <strong>copyrightwebstoryboyAll rights Reserved.</strong>
             </address>
</div> 

</body>

</html>