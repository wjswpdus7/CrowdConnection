<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/css.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}


h3{
	text-align: center;
	font-size: 26px;
	padding-right: 100px;
	padding-top: 40px;
}

.b12 {
  margin: 0;
  padding: 0.5rem 1rem;
  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  background-color:#6bd3f7;
  width: auto;
  color:#fff;

  border: none;
  border-radius: 4px;
}
.b11{
	text-align:right;
}
</style>
</head>
<body>
	
<header>
        <div class="header_wrap">
            <div class="header_top">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <a href="writeselect" id="new_iv">투자신청하기</a>
                    <a href="signup" id="sign_up">회원가입</a>
                    <a href="login" id="sign_in">로그인</a>
            </div>
            <div class="gnb">
                <div class="gnb_button">
                    <a href="../">홈</a>
                    <a href="../investment/list">투자</a>
                    <a href="../partner/list">동업</a>
                    <a href="../survey/list">수요조사</a>
                 </div>
                 
			<div class="dropdown" >
                   <a href="/notice/getail" class="dropbtn">고객센터</a>
                   	     <div class="dropdown-content">
                   	        <a href="/notice/list">공지사항</a>
        					<a href="/notice/detail">게시판</a>
        					<a href="/notice/guide">투자소개</a>
        				</div>
                  	 </div>
                    
                
                <div class="search_box" style="display: inline-block;">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
        </div>
    </header>
	
	<div style=" padding-left: 15%; padding-right: 15%;">
	   
	<div>
		<h3 style="font-size: 26px; padding-top: 60px; padding-bottom: 10px;"><strong>[지원사업] 2023년 관광기업 크라우드펀딩 지원사업</strong></h3>
	</div>
   	
	<hr size="1" align="center" width="1080px;" color="#e6e6e6">
	
	<div style="padding-top: 20px; padding-bottom: 20px; font-size: 16px;">크라우드펀딩은 군중 또는 다수를 뜻하는 영어 단어 ‘크라우드(crowd)’와 자금조달을 뜻하는 ‘펀딩(funding)’을 조합한 용어로, 창의적 기업가를 비롯한 자금수요자가 인터넷 등의 온라인상에서 자금모집을 중개하는 자(크라우드펀딩 중개업자)를 통하여 불특정다수의 소액투자자로부터 자금을 조달하는 행위를 말합니다.
크라우드펀딩은 금융중개기관(예: 은행)을 통하는 간접 금융과 달리, IT 기술의 발전을 기반으로 인터넷 등 온라인을 통해 연결된 자금수요자들이 크라우드펀딩 중개업체를 통하여 직접 자금을 조달하는 직접 금융의 한 형태로 볼 수 있습니다.</div>
	
	<hr size="1" align="center" width="1080px;" color="#e6e6e6">

<div style="display: flex; justify-content: space-between; padding-bottom: 60px;">
    <div style="display: flex;">
        <div>
            <a href="./"><button class="b12">돌아가기</button></a>
        </div>
        <div class="b11" style=" padding-left: 870px;">
            <a href="./list"><button class="b12">삭제하기</button></a>
        </div>
        <div class="b11" style="padding-left: 20px;">
            <a href="update"><button class="b12">수정하기</button></a>
        </div>
    </div>
</div>

	</div>	
	<div> 
  <div class="footer">		
	<div class="container">
		<div class="top"><a href="../"><img src="/resources/img/footimg.png"></a></div>
	<div class="s1">
		<div>
	       		<div>
    				<h2>Team Members</h2>
  				</div>
       			<div>
       				<p>유형주 : gadadaa@naver.com</p>
				</div>
				<div>
       				<p>전제연 : gadadaa@naver.com</p>
				</div>
				<div>
       				<p>이치수 : gadadaa@naver.com</p>
				</div>
				<div>
       				<p>이시호 : gadadaa@naver.com</p>
				</div>		
		</div>
	</div>
			<div class="s2">
  				<div>
    				<h2>Team Member Github</h2>
  				</div>
  				<div class="image-container">
    				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
      					<p>Yu Hyeong Ju</p>
    				</div>
    				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
      					<p>Jeon Je Yeon</p>
    				</div>
    				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
      					<p>Lee Chi Su</p>
    				</div>
 	  				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
     					 <p>Lee Si Ho</p>
    				</div>
    			</div>
  		  </div>
		
	</div>	
  </div>
       		<address class="top">
       			<strong>copyrightwebstoryboyAll rights Reserved.</strong>
       		</address>
</div> 
</body>
</html>