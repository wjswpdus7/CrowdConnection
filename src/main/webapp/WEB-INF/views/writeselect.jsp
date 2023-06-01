<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드커넥션</title>
	<link rel="stylesheet" href="/resources/css/css.css">
    <link rel="stylesheet" href="/resources/css/write_select.css">
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

    <div class="wt_wrap">
            <div class="wt_title">
                <div class="wt_text">
                    <p>투자신청하기</p>
                    <span>사업계획을 상세하게 소개해주세요!</span>
                </div>
            </div>
            

            <div class="select_wrap">
	            <div class="iv_wt">
	            	<div class="wt_float">
	            		<div class="iv_float_img"></div>
		                <p>투자 신청서</p>
		                <ul>
		                	<li>금융투자 형식의 투자신청서입니다.</li>
		                	<li>설정한 금액단위의 투자를 받을 수 있습니다.</li>
		                	<li>목표금액을 정할 수 있습니다.</li>
		                </ul>
		                <a href="write/invest_write">작성하기</a>
	                </div>
	            </div>
	
	            <div class="pt_wt">
	            	<div class="wt_float">
	            		<div class="pt_float_img"></div>
		                <p>동업 신청서</p>
		                <ul>
		                	<li>동업제의 신청서 입니다.</li>
		                	<li>인적자원, 건물임대 등의 현물투자를 받을 수 있습니다.</li>
		                </ul>
		                <a href="partner/write">작성하기</a>
	                </div>
	            </div>
            </div>
    </div>
</body>
</html>