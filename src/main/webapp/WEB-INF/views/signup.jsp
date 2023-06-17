<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/signup.css">
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

	<div class="page_wrap">

		<div class="logo_area">
			<h1>회원가입</h1>
			<p>크라우드 커넥션에 오신것을 환영합니다.
		</div>

		<div class="process_nav">
			<ul class="tabs">
				<li class="tab-1 current" >약관동의</li>
				<li class="tab-2" >정보입력</li>
				<li >가입완료</li>
			</ul>
		</div>

		<div class="signup_wrap">
			<form id="myform" method="post">
			<div id="tab-1" class="tab-content current">
					<div class="agr_wrap">
						<div tabindex="0" class="agree_content">
							<jsp:include page="NewFile.jsp"/>
						</div>
						
						<div class="agree_checkbox">
							<div class="agree_inside">
								<label for="chk1">이용약관 동의 (필수)</label>
								<input type="checkbox" name="agree" id="chk1">
							</div>
						</div>
					</div>
					
					<div class="agr_wrap">
						<div tabindex="1" class="agree_content">
							<jsp:include page="NewFile1.jsp"/>
						</div>
						
						<div class="agree_checkbox">
							<div class="agree_inside">
								<label for="chk2">개인정보 수집 및 이용 동의 (필수)</label>
								<input type="checkbox" name="agree" id="chk1">
							</div>
						</div>
					</div>
					
					<div class="agr_all">
						<label for="chk3">모든 약관에 동의합니다.</label>	
						<input type="checkbox" name="agree" id="chk3" onclick='selectAll(this)'>
					</div>
					
					<div class="tab_ctrl">
						<ul class="tabs2">
							<a href="javascript:history.back()"><li class="before_bt">취소</li></a>
							<li class="after_bt tab-ctrl" data-tab="tab-2" id="agr_nextbt">다음</li>
						</ul>
					</div>
			
			</div>

			<div id="tab-2" class="tab-content">
				<div class="user_info">
				
					<div class="type_select_wrap">
						<label class="must_wt">회원구분</label>
						<div class="type_radio">
						
							<div>
								<input type="radio" name="grade" value="1" id="type1"><label for="type1">일반회원</label>
							</div>
							
							<div>
								<input type="radio" name="grade" value="2" id="type2"><label for="type2">창업회원</label> 
							</div>
							
							<div>
								<input type="radio" name="grade" value="3" id="type3"><label for="type3">기업회원</label>
							</div>
							
						</div>
					</div>
					
					<div class="info_input">
					
						<div>
							<label class="must_wt">아이디</label>
							<div id="id_wrap">
								<input type="text" id="id_input" maxlength="13" minlength="8" name="id" placeholder="8~13자의 영문, 숫자" onfocus="this.placeholder = ''" onblur="this.placeholder = '8~13자의 영문, 숫자'">
								<button id="id_chk">중복검사</button>
							</div>
						</div>
						<div>
							<label class="must_wt">비밀번호</label>
							<input type="password" name="password">
						</div>
						<div>
							<label class="must_wt">비밀번호 확인</label>
							<input type="password" placeholder="비밀번호를 한번 더 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호를 한번 더 입력해 주세요.'">
						</div>
						<div>
							<label class="must_wt">이름</label>
							<input type="text" name="name">
						</div>
						<div>
							<label class="must_wt">전화번호</label>
							<input type="text" name="tel" placeholder=" '-'를 빼고 입력 해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder = ' \'-\'를 빼고 입력해 주세요' ">
						</div>
						<div>
							<label>주소</label>
							<input type="text" name="address">
						</div>
						<div>
							<label>이메일</label>
							<input type="text" name="mail">
						</div>
					</div>
					
					<div class="tab_ctrl">
						<ul class="tabs2">
							<li class="before_bt tab-ctrl" data-tab="tab-1">이전</li>
							<li class="after_bt" id="sign_submit">확인</li>
						</ul>
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>

	
	
	<script>
		function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('agree');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	</script>
	
	<script>
		$('#agr_nextbt').click(function(){
			var checked = $('#chk1').is(':checked');
			
			if(checked) {
				$(document).ready(function() {
					$('ul.tabs2 li.tab-ctrl').click(function() {
						var tab_id = $(this).attr('data-tab');

						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');

						$('ul.tabs li.' + tab_id).addClass('current');
						$("#" + tab_id).addClass('current');
					});
				});
			}else {
				alert('약관에 동의해주세요.');
			}
		});
	</script>
	
	
	<script>
	document.getElementById('sign_submit').addEventListener('click', function() {
		  // 아이디 입력란 값 확인
		  var id = document.getElementById('id_input').value;
		  if (id === '') {
		    alert('아이디를 입력해주세요.');
		    return;
		  }

		  // 비밀번호 입력란 값 확인
		  var password = document.getElementsByName('password')[0].value;
		  if (password === '') {
		    alert('비밀번호를 입력해주세요.');
		    return;
		  }

		  // 비밀번호 확인 입력란 값 확인
		  var passwordConfirm = document.querySelector('input[type="password"][placeholder="비밀번호를 한번 더 입력해 주세요."]').value;
		  if (passwordConfirm === '') {
		    alert('비밀번호를 한번 더 입력해주세요.');
		    return;
		  }

		  // 이름 입력란 값 확인
		  var name = document.getElementsByName('name')[0].value;
		  if (name === '') {
		    alert('이름을 입력해주세요.');
		    return;
		  }

		  // 전화번호 입력란 값 확인
		  var tel = document.querySelector('input[name="tel"]').value;
		  if (tel === '') {
		    alert('전화번호를 입력해주세요.');
		    return;
		  }

		  myform.submit();
		});
	</script>
</body>




</html>