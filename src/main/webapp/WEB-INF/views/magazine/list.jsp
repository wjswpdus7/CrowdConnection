<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<link rel="stylesheet" href="/resources/css/atest12345.css">
<title>크라우드커넥션</title>
<style>
.page_wrap {
	text-align:center;
	font-size:0;
	padding-top: 40px;
 }
.page_nation {
	display:inline-block;
}
.page_nation .none {
	display:none;
}
.page_nation a {
	display:block;
	margin:0 3px;
	float:left;
	border:1px solid #e6e6e6;
	width:28px;
	height:28px;
	line-height:28px;
	text-align:center;
	background-color:#fff;
	font-size:13px;
	color:#999999;
	text-decoration:none;
}
.page_nation .arrow {
	border:1px solid #ccc;
}
.page_nation .pprev {
	background:#f8f8f8  no-repeat center center;
	margin-left:0;
}
.page_nation .prev {
	background:#f8f8f8 no-repeat center center;
	margin-right:7px;
}
.page_nation .next {
	background:#f8f8f8  no-repeat center center;
	margin-left:7px;
}
.page_nation .nnext {
	background:#f8f8f8  no-repeat center center;
}
.page_nation a.active {
	background-color:#42454c;
	color:#fff;
	border:1px solid #42454c;
}

.b12 {
 
  margin: 0;
  padding: 0.5rem 1rem;
  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  text-decoration: none;
  background-color:#6bd3f7;
  display: inline-block;
  width: auto;
  color:#fff;

  border: none;
  border-radius: 4px;
}
.b11{
	text-align: right;
	padding: 20px 15px 60px  0px;
}
</style>
</head>
<body>

<header>
        <div class="header_wrap">
            <div class="header_top">
                    <c:if test="${sessionScope.member ==null }">
                    <a href=".././"><img src="/resources/img/logo.png"></a>
                    <a href="writeselect" id="new_iv">투자신청하기</a>
                    <a href="../signup" id="sign_up">회원가입</a>
                    <a href="../login" id="sign_in">로그인</a>
                    </c:if>
                    <c:if test="${sessionScope.member !=null }">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <a href="writeselect" id="new_iv">투자신청하기</a>
                    <a href="../logout" >로그아웃</a>
                    <a href="../login" id="sign_in">${sessionScope.member.name}님 환영합니다</a>
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
    
    <h2 class="mai1">크라우드커넥션 매거진</h2>
    
    <div class="background">
        

    <div class="list_wrap">
       

        <div class="list_contents"> 
            <div style="border: 1px solid #d3d3d3; border-radius: 10px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_1.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>

            <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_2.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>농식품 크라우드펀딩 활성화 지원사업 안내[크라우드펀딩 진행중]</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>

             <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_3.png"></a>
                </div>
              <div class="information">
                <div class="title">
                         <a href="detail"><strong>ㅇㅇ술집 투자 유치 성공기념 방문 이벤트😎</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>
            
            <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_4.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>
            
            <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_1.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>
            
            <div style="border: 1px solid #d3d3d3; border-radius: 10px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_1.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>
            
            <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_1.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>
            
            <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_1.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>
            
            <div style="border: 1px solid #d3d3d3; border-radius: 10px; height: 269.6px;"  onclick="location.href='detail'">
                <div class="thumbnail">
                    <a href="detail"><img src="/resources/img/magazine_1.png"></a>
                </div>
             <div class="information">
                <div class="title">
                         <a href="detail"><strong>관광기업 크라우드펀딩 지원사업 안내</strong></a>
                </div>
            		<div class="dayys"><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/>임시날짜</div>
                </div>
            </div>	
        </div> 
        
             <div class="page_wrap">
   				<div class="page_nation">
      				<a href="?page=1" >처음</a>
      				<a href="?page=${pager.prev}">이전</a>			
	  					<c:forEach var="page" items="${pager.list}">
							<a href="?page=${page}" class=" ${page eq pager.page ? 'active' : ''}">${page}</a>
						</c:forEach>
      					<a href="?page=${pager.next}" class="page-link">다음</a>
	  					<a href="?page=${pager.last}" class="page-link">끝</a>
   				</div>
			</div>
    
					<c:if test="${sessionScope.member.grade == 1 }">
    					<div class="b11">
    						<a href="add"><button class="b12">글쓰기</button></a>
    					</div>
    				</c:if>   
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