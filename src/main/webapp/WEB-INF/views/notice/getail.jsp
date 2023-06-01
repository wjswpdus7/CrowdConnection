<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<meta charset="UTF-8">
<title>크라우드커넥션</title>
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
                   <a href="#" class="dropbtn">고객센터</a>
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
	
	<h3>상세정보</h3>
	
	<hr size="1" align="center" width="1080px;" color="#e6e6e6">
	   
	<div>
		<h3>${item.title}</h3>
		<div><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/></div>
	</div>
   	
	<hr size="1" align="center" width="1080px;" color="#e6e6e6">
	
		<div>${item.contents}</div>
	
	
	
	
	<hr size="1" align="center" width="1080px;" color="#e6e6e6">

<div style="display: flex; justify-content: space-between;">
    <div style="display: flex;">
        <div>
            <a href="../list"><button class="b12">돌아가기</button></a>
        </div>
        <div class="b11" style=" padding-left: 870px;">
            <a href="../list"><button class="b12">삭제하기</button></a>
        </div>
        <div class="b11" style="padding-left: 20px;">
            <a href="../update/${item.num}"><button class="b12">수정하기</button></a>
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