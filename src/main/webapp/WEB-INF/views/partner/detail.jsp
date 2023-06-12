<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/resources/css/change.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="/resources/css/tab.css">
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/modal.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/partner_detail.css">
<link rel="stylesheet" href="/resources/css/invest_list.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<script src="/resources/js/tablabel.js"></script>
<title>크라우드 커넥션</title>
<script>
	
</script>
<style>
</style>
</head>
<body>
	<header>
        <div class="header_wrap">
            <div class="header_top">
                    <a href="/"><img src="/resources/img/logo.png"></a>
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
                    <a href="/">홈</a>
                    <a href="/investment/list">투자</a>
                    <a href="/partner/list">동업</a>
                    <a href="/survey/list">수요조사</a>
                    <a href="/customer/list">고객센터</a>
                </div>
                <div class="search_box">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
        </div>
    </header>

	<article>
		<div id="background">
			<div>
				<div id="imgmain">
					<img id="big" src="/thumbnail/${thumbnail.uuid}_${thumbnail.filename}">
					<div id="imgsub">
							<img class="small" src="/thumbnail/${thumbnail.uuid}_${thumbnail.filename}">
						<c:forEach var="topImage" items="${topImage}">
							<img class="small" src="/topUpload/${topImage.uuid}_${topImage.filename}"> 
						</c:forEach>
					</div>
					<script src="/resources/js/change.js"></script>
				</div>

				<div id="textmain">
					<h1>${item.title}</h1>
					<h3>${item.subTitle}</h3>
					<div class="detail-text">
						<span class="sub-text">참여자 (x)</span>&nbsp; 46명
					</div>
					<div class="detail-text">
						<span class="sub-text">남은기간</span>&nbsp; ${item.leftDate}일 &nbsp; <span class="sub-text">${item.endDate} 종료</span>
					</div>
					<button class="detail-button" type='button'
						onclick="location.href='agree'">투자하기</button>
					<button class="detail-button" type='button' id="modal_btn">문의하기</button>
					<span class="heart"> <i class="bi bi-heart"></i> <i
						class="bi bi-heart-fill"></i></span>
				</div>
			</div>

			<section>
				<div id="subcontent">
					<div class="container1">
						<hr>
						<!-- 탭 메뉴 상단 시작 -->
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">상세 정보</li>
							<li class="tab-link" data-tab="tab-2">사업자정보</li>
							<li class="tab-link" data-tab="tab-3">새소식</li>
							<li class="tab-link" data-tab="tab-4">댓글</li>
						</ul>

						<!-- 탭 메뉴 상단 끝 -->
						<hr>
						<!-- 탭 메뉴 내용 시작 -->
						<div id="tab-1" class="tab-content current">

							<img class="detail_content" src="/resources/img/image6.png">

						</div>
						<div id="tab-2" class="tab-content">
							<div class="pub_info">
								<div>
									<p>사업체 또는 대표자명</p>
									<span>${item.name}</span>
								</div>
								
								<div>
									<p>이메일</p>
									<span>${item.mail}</span>
								</div>
								
								<div>
									<p>전화번호</p>
									<span>${item.tel}</span>
								</div>
								
								<c:if test = "${item.url != null}">
									<div>
										<p>홈페이지</p>
										<span><a href="http://${item.url}" target="_blank">${item.url}</a></span>
									</div>
								</c:if>
								
								<c:if test = "${item.address != null}">
									<div>
										<p>주소</p>
										<span>${item.address}</span>
									</div>
								</c:if>
								
								<div>
									<p>전화번호</p>
									<span><a href="http://naver.com">asdfghjkjhgfdsadfghjkljhgfdsfghjkljhsdsadsdsdsadsasagfd<i></i></a></span>
								</div>
							</div>
						</div>
						
						
						<div id="tab-3" class="tab-content">
						<c:forEach var="0" begin="1" end="3" >
							<div class="detail_update">
								<div class="detail_tab3_title">한국항공우주연구원<div>2 day ago</div></div>
								<p>May 15,2023 10:46AM</p>
										<hr>
									<div>
										<p class="detail_tab_text">업데이트 소식</p>
									</div>
									</div>
											</c:forEach>
								</div>
				
						
						
								<div id="tab-4" class="tab-content">
									<div class="comments_wrap">
									
										<c:forEach var="0" begin="1" end="3">
											<div class="detail_reply">
												<div>
													<p class="detail_tab_text">안녕하세요 테스트용 댓글입니다.</p>
												</div>
											</div>
										</c:forEach>
										
									</div>
									
								<form method="post" id="myform" action="comment_add">
									<div class="comment_input_wrap">
										<textarea placeholder="무분별한 비난 및 욕설은 삭제될 수 있습니다."></textarea>
										<button onclick="myform.submit();">등록</button>
									</div>
								</form>
							</div>
						
					</div>
				</div>
			</section>
			</div>
	</article>
	<div class="black_bg"></div>
	<div class="modal_wrap">
		<h1 class="modal_title">문의하기</h1>
		<hr>
		<div id="modal_main">
			<div class="modal_main_text">
				사업체 혹은 대표자명:&nbsp; <span class="modal_sub_text">${item.name}</span>
			</div>
			<div class="modal_main_text">
				이메일:&nbsp; <span class="modal_sub_text">${item.mail}</span>
			</div>
			<div class="modal_main_text">
				전화번호:&nbsp; <span class="modal_sub_text">${item.tel}</span>
			</div>
			<div class="modal_main_text">
				홈페이지:&nbsp; <span class="modal_sub_text"><a href="${item.url}" target="_blank">${item.url}</a></span>
			</div>
			<div class="modal_main_text">
				주소:&nbsp; <span class="modal_sub_text">${item.address}</span>
			</div>
		</div>
		<hr>
		<div>
			<div class="modal_close">
				<button class="close_button" onclick="location.href='#'">확인</button>
			</div>
		</div>
	</div>

	<script src="/resources/js/modal.js"></script>
	
</body>

<footer>
	<div class="footer">
		<div class="container">
			<div class="top">
				<a href="../"><img src="/resources/img/footimg.png"></a>
			</div>
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
						<a href="https://github.com/malnim/CC-team"><img
							src="/resources/img/footer.png"></a>
						<p>Yu Hyeong Ju</p>
					</div>
					<div class="image">
						<a href="https://github.com/malnim/CC-team"><img
							src="/resources/img/footer.png"></a>
						<p>Jeon Je Yeon</p>
					</div>
					<div class="image">
						<a href="https://github.com/malnim/CC-team"><img
							src="/resources/img/footer.png"></a>
						<p>Lee Chi Su</p>
					</div>
					<div class="image">
						<a href="https://github.com/malnim/CC-team"><img
							src="/resources/img/footer.png"></a>
						<p>Lee Si Ho</p>
					</div>
				</div>
			</div>

		</div>
	</div>
	<address class="top">
		<strong>copyrightwebstoryboyAll rights Reserved.</strong>
	</address>
</footer>
</html>