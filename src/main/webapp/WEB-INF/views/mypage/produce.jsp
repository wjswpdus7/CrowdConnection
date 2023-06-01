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
	
 #myChart{
 	margin:0 auto;
 }
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
	
	#list{
		width:1200px;
		margin:0 auto;
		border-top:1px solid black;
		border-bottom: 1px solid black;
	}
	
	#title{
		width:800px;
		text-align:center;
		border-bottom:1px solid black;
	}
	#invest{
		width:200px;
		text-align:center;
		border-bottom:1px solid black;
	}
	#date{
		width:150px;
		text-align:center;
		border-bottom:1px solid black;
	}
	.content{
		text-align:center;
	}
	.price{
		text-align:center;
	}
	.date{
		text-align:center;
	}
	tr{
	
		font-size:14px;
	}
	td{
		font-size:14px;
		
	}
	
#container{
	margin-top:100px;
	width:1200px;
	text-align:center;
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
			<li><a href="list" class="tab">펀딩한 프로젝트</a></li>
			<li><a href="produce" class="tab">제작한 프로젝트</a></li>
			<li><a href="interest" class="tab">관심 프로젝트</a></li>
			<li><a href="config" class="tab">설정 </a></li>
		</ul>
		<hr>
		<div id="container">
	<h2>제작한 프로젝트를 <br>
	확인해 보세요.</h2>
	</div>
</body>
</html>