<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="/resources/css/css.css">
    <link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
    <header style="border-bottom:1px solid #e4e4e4;">
        <div class="header_wrap">
            <div class="header_top">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <a href="/writeselect" id="new_iv">투자신청하기</a>
                    <a href="/signup" id="sign_up">회원가입</a>
                    <a href="/login" id="sign_in">로그인</a>
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

    <div class="login_wrap">
        <div class="logo_area">
            <img src="/resources/img/logo.png">
        </div>
            <div class="login_form">
            	<form method="post">
                <div>
                    <p>아이디</p>
                </div>

                <div>
                    <input type="text" name="id" placeholder="아이디 또는 이메일">
                </div>

                <div>
                    <p>비밀번호</p>
                </div>
                <div>
                    <input type="password" name="password" placeholder="비밀번호">
                </div>
                <div style="width: 100%;">
                    <div class="find">
                        <a href="">
                            <span>아이디, 비밀번호 찾기</span>
                        </a>
                    </div>
                </div>

                <div class="button_area">
                    <div class="login_button">
                        <button>로그인</button>
                    </div>
	
                    <div class="signup_button">
                        <button type="button" onclick="location.href='signup'">회원가입</button>
                    </div>

                    <div class="sns_line">
                        <hr>
                        <span>또는</span>
                        <hr>
                    </div>

                    <div class="sns_login">
                        <button class="kakao_button" type="button">
                                <div class="kakao_logo"></div>                       
                                <span>카카오로 시작하기</span>
                        </button>

                        <button class="naver_button" type="button">
                            <div class="naver_logo"></div>                       
                            <span>네이버로 시작하기</span>
                        </button>
                    </div>
                </div>
				</form>
            </div>
        </div>
</body>
</html>