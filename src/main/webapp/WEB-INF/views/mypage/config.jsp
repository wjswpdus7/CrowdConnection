<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<link rel="stylesheet" href="/resources/css/mypage.css">
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/invest_list.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
		.tab{
		text-decoration:none;
		font-size:15px;
		font-weight:bold;
		font-family:'Noto Sans KR';
		
	}
		a:link{
	color:black;
	}
	a:vlisited{
	color:black;
	}
	
	a:hover{
	color:#03134a
	}
	p{
		font-size:16px;
	}
	h3{
		font-size:24px;
	}
	#container{
		width:750px;
		margin:0 auto;
	}
	
	button{
		border:1px solid black;
		background-color:
	}
</style>
</head>
<body>
<header>
        <div class="header_wrap">
            <div class="header_top">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <a href="/mypage/list" id="my_page">마이페이지</a>
                    <a href="" id="new_iv">투자신청하기</a>
                    <a href="" id="sign_up">회원가입</a>
                    <a href="" id="sign_in">로그인</a>
            </div>
            <div class="gnb">
                <div class="gnb_button">
                    <a href="../">홈</a>
                    <a href="../investment/list">투자</a>
                    <a href="../partner/list">동업</a>
                    <a href="">수요조사</a>
                    <a href="../customer/list">고객센터</a>
                </div>
                <div class="search_box">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
        </div>
    </header>
<hr>
		<h1>마이 페이지</h1>
		<hr>
		<ul>
			<li><a href="#" class="tab">펀딩한 프로젝트</a></li>
			<li><a href="produce" class="tab">제작한 프로젝트</a></li>
			<li><a href="interest" class="tab">관심 프로젝트</a></li>
			<li><a href="config" class="tab">설정 </a></li>
		</ul>
		<hr>
		<div id="container">
		<h3>기본정보 설정</h3>
		<p>이름</p>
		<p>이치수</p>
		
		<p>이메일</p>
		<p>om9100@naver.com</p>
		
		<p>주소</p>
		<p>등록된 주소가 없습니다.</p>
		
		<p>휴대번호</p>
		<p>010-1111-2222</p>
		
		<h3>비밀번호 설정</h3>
		<p>이메일 아이디(om9100@naver.com) 로그인을 위한 비밀번호를 설정해주세요.</p>
		
		<P>새 비밀번호</P>
		<input></input>
		<P>새 비밀번호 확인</P>
		<input></input>
		
		<div>
		<button>비밀번호변경</button>
		</div>
		</div>
		
</body>
</html>