<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<title>크라우드커넥션</title>
<style>
.list_table {
	width: 1024px;
    height: 480px;
        margin-left: auto;
    margin-right: auto;
}
.list_table tbody td { 
	padding: 10px 0; 
	text-align: center; 
	border-bottom: 1px solid #e5e5e5; 
}
.list_table thead th {
 	border-top: 1px solid #e5e5e5; 
 	border-bottom: 1px solid #e5e5e5; 
 	padding: 5px 0; text-align: center; 
 	background: #faf9fa; 
 }
.under {
	margin-bottom: 60px;
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
.hc {
	text-align: center;
	color: #102b88;
	padding-top: 80px; 
	padding-bottom : 40px;
	font-size: 32px;
	padding-right: 80px;
}

.page_wrap {
	text-align:center;
	font-size:0;
	padding-top: 40px;
	padding-right: 55px;
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
                    
                
                <div class="search_box" style="display: inline-block;">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
        </div>
    </header>
<div style=" padding-left: 15%; padding-right: 15%;">   
<h2 class="hc">공지사항</h2>
<div>
    <table class="list_table">
        <colgroup>
            <col width="8%" />
            <col width="50%" />
            <col width="18%" />
        </colgroup>
        <thead>
            <tr>
                <th>번호</th>
                <th style="padding-left: 40px;">제목</th>
                <th>일자</th>
            </tr>
        </thead>
        <tbody class="under">

   <c:if test="${list.size() < 1}">
						<tr>
							<td colspan="5">검색 된 내용이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.num}</td>
							<td style="padding-left: 40px;"><a href="getail/${item.num}">${item.title}</a></td>
							<td><fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd"/></td>						
						</tr>
					</c:forEach>

        </tbody>
    </table>
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