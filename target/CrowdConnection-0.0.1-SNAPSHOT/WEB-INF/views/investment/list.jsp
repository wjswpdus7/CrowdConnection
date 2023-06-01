<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>크라우드커넥션</title>
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/partner_list.css">
</head>
<body>
	<header>
        <div class="header_wrap">
            <div class="top">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <a href="" id="new_iv">투자신청하기</a>
                    <a href="" id="sign_up">회원가입</a>
                    <a href="" id="sign_in">로그인</a>
            </div>
            <div class="gnb">
                <div class="gnb_button">
                    <a href="../">홈</a>
                    <a href="../investment/list">투자</a>
                    <a href="../../partner/list">동업</a>
                    <a href="">수요조사</a>
                    <a href="../../customer/list">고객센터</a>
            </div>
                <div class="search_box">
                    <input type="text" placeholder="검색창">
                    <img src="/resources/img/search.png">
                </div>
            </div>
        </div>
    </header>


    <div class="background">
        <div class="list_wrap">
            <div class="list_top">
                <strong>투자</strong>
                <p>창업에 함께 투자하는 홈페이지입니다.</p>
            </div>
            <div class="category">
                <div>
                    <input type="checkbox">신규
                    <input type="checkbox">확장
                    <input type="checkbox">진행중
                    <input type="checkbox">종료된
                    <select>
                        <option value="">전체</option>
                        <option value="">제목</option>
                        <option value="">내용</option>
                    </select>
                    <input type="text" placeholder="검색어를 입력해주세요.">
                    <button>찾기</button>
                </div>

                <div>
                    <a href="">조회순</a>
                    <a href="">인기순</a>
                    <a href="">추천순</a>
                </div>
            </div>  

            <div class="list_contents">
                <div class="item">
                    <div class="thumbnail">
                        <a href="detail"><img src="/resources/img/thumbnail1.png"></a>
                    </div>
                    <div class="title">
                        <a href="detail"><strong>[진행중] CHAT GPT로 수익 올리기</strong></a>
                    </div>
                    <div class="information">
                        <p>5일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href="detail"><img src="/resources/img/thumbnail2.png"></a>
                    </div>
                    <div class="title">
                        <a href="detail"><strong>[진행중] 블로그 운영 비법</strong></a>
                    </div>
                    <div class="information">
                        <p>3일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href="detail"><img src="/resources/img/thumbnail3.png"></a>
                    </div>
                    <div class="title">
                        <a href="detail"><strong>[진행중] 면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href="detail"><img src="/resources/img/thumbnail4.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 귀여운 빨간공</strong></a>
                    </div>
                    <div class="information">
                        <p>13일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail5.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 풍력 발전기</strong></a>
                    </div>
                    <div class="information">
                        <p>20일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail6.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 우리아이 첫 신발</strong></a>
                    </div>
                    <div class="information">
                        <p>4일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail7.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 맛있는 버섯탕</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail8.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 세종시 맛집 새우탕</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail9.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 하이볼 메이커</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail4.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail5.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <a href=""><img src="/resources/img/thumbnail6.png"></a>
                    </div>
                    <div class="title">
                        <a href=""><strong>[진행중] 면역력 증가 알약</strong></a>
                    </div>
                    <div class="information">
                        <p>6일남음</p>
                    </div>
                </div>
                
            </div>
            <div class="bt_wrap">
                <a href="" class="on">목록</a>
                <a href="">수정</a>
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
</body>
</html>