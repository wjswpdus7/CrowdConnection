<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/partner_list.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
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
                    <a href="../customer/list">고객센터</a>
                </div>
                <div class="search_box">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
        </div>
    </header>


    <div class="background">
        <div class="list_bg">
            <div class="bg_text">
                <strong>동업</strong>
                <p>동업을 희망하는 사장님 목록입니다.</p>
            </div>
        </div>

        <div class="list_wrap">
            <div class="category">
                <div class="type">
                    <ul>
                        <li>신규</li>
                        <li>확장</li>
                        <li>진행중</li>
                        <li>종료</li>
                        <li id="hs_button" onclick="openCloseToc()">상세검색▶</li>
                    </ul>
                </div>

                <div id="hidden_search">
                    <select>
                        <option value="">전체</option>
                        <option value="">제목</option>
                        <option value="">내용</option>
                    </select>
                    <input type="text" placeholder="검색어를 입력해주세요.">
                    <button>찾기</button>
                </div>

                <div class="sort">
                    <ul>
                        <li>조회순</li>
                        <li>추천순</li>
                        <li>인기순</li>
                    </ul>
                </div>
            </div>

            <div class="list_contents">
                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail1.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>CHAT GPT로 수익 올리기</strong></a>
                    </div>
                    <div class="information">
                        <p>5일남음</p>
                    </div>
                </div>

                <div class="ended_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail2.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>종료</span><strong>블로그 운영 비법</strong></a>
                    </div>
                    <div class="information">
                        <p>안남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail3.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail4.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>귀여운 빨간공</strong></a>
                    </div>
                    <div class="information">
                        <p>13일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail5.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>풍력 발전기</strong></a>
                    </div>
                    <div class="information">
                        <p>20일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail6.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>우리아이 첫 신발</strong></a>
                    </div>
                    <div class="information">
                        <p>4일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail7.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>맛있는 버섯탕</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail8.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>세종시 맛집 새우탕</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail9.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>하이볼 메이커</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail4.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail5.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="open_item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail6.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><span>진행중</span><strong>면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>
            </div>
        </div>
      </div>
      
	<footer>
      <div class="footer" style="font-size:1.4rem;">
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
	</footer>

    <script>
        function openCloseToc() {
          if(document.getElementById('hidden_search').style.display === 'inline') {
            document.getElementById('hidden_search').style.display = 'none';
            document.getElementById('hs_button').textContent = '상세검색▶';
          } else {
            document.getElementById('hidden_search').style.display = 'inline';
            document.getElementById('hs_button').textContent = '상세검색▼';
          }
        }
      </script>
</body>
</html>