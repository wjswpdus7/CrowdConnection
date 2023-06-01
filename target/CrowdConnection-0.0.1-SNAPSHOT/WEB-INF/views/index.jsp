<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/css.css">
<style>
body {
	width: 1200;
	margin: auto;
}

#maintext {
	position: relative;
	text-align: center;
}

#carouselbackground {
	width: 1200px;
	margin: 0 auto;
}

.card-img-top {
	background-size: contain;
}

.card {
	width: 230px;
}

hr {
	margin: 0px;
}

.carousel-control-prev-icon, .carousel-control-next-icon {
	height: 100px;
	width: 100px;
	outline: black;
	background-color: rgba(0, 0, 0, 0.3);
	background-size: 100%, 100%;
	border-radius: 50%;
	border: 1px solid black;
}

.carousel-control-prev-icon {
	position: absolute;
	left: -110px;
}

.carousel-control-next-icon {
	position: absolute;
	right: -50px;
}

#aboutfunding {
	width: 100%;
	height: 350px;
	text-align: center;
}

#magazine {
	width: 1200px;
	margin: 0 auto;
}

.magazineimg {
	border: 1px solid black;
	width: 200px;
	height: 200px;
	display: inline-block;
	margin: 48px;
}

.maleft {
	margin-left: 0px;
}

.maright {
	margin-right: 0px;
}
</style>
</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="top">
				<a href="../"><img src="/resources/img/logo.png"></a> <a
					href="" id="new_iv">투자신청하기</a> <a href="" id="sign_up">회원가입</a> <a
					href="" id="sign_in">로그인</a>
			</div>
			<div class="gnb">
				<div class="gnb_button">
					<a href="../">홈</a> <a href="../investment/list">투자</a> <a
						href="../partner/list">동업</a> <a href="">수요조사</a> <a
						href="../customer/list">고객센터</a>
				</div>
				<div class="search_box">
					<input type="text" placeholder="검색창"> <img
						src="/resources/img/search.png">
				</div>
			</div>
		</div>
	</header>

<article>
<section>
	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/resources/img/메인이미지1.png" class="d-block w-100 h-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="/resources/img/메인이미지2.png" class="d-block w-100 h-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="/resources/img/메인이미지3.png" class="d-block w-100 h-100"
					alt="...">
			</div>
		</div>
	</div>
	</section>
	<hr>
	<section>
	<div id="maintext">
		<h1>CrowdConnection에서 시작해보세요</h1>
		<p>CrowdConnection은 창업을 원하는 사람에게 기회를 주는 곳 입니다.</p>

		<button>Sign up Now</button>
		<button>LEARN MORE</button>
	</div>


	<div id="carouselbackground">
		<h1>Popular Project</h1>
		<div id="carouselExampleIndicators" class="carousel slide">

			<div class="carousel-inner" id="PPmain">
				<div class="carousel-item active">
					<div class="row row-cols-1 row-cols-md-4 g-4">
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row row-cols-1 row-cols-md-4 g-4">
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row row-cols-1 row-cols-md-4 g-4">
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card h-100">
								<div class="imgsize">
									<img src="/resources/img/PREVIEW.png" class="card-img-top"
										alt="...">
								</div>
								<hr>
								<div class="card-body">
									<h5 class="card-title">
										<span>(개인/기업) title</span><br>
									</h5>
									<p class="card-text">
										<span>Funding</span> <br> <span>모금액</span> <br> <span>article</span>
									</p>
								</div>
								<div class="card-footer">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 30%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">25%</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<div id="aboutfunding">
		<img src="/resources/img/메인이미지4.png">

	</div>
	</section>
<section>
	<div id="magazine">
		<h1>매거진</h1>
		<p>창업에 필요한 정보를 만나보세요.</p>
		<div>
			<div class="magazineimg">
				1
				<p>title</p>
				<br>
				<p>article>
			</div>
			<div class="magazineimg">2</div>
			<div class="magazineimg">3</div>
			<div class="magazineimg">4</div>
		</div>
		<div>
			<div class="magazineimg">5</div>
			<div class="magazineimg">6</div>
			<div class="magazineimg">7</div>
			<div class="magazineimg">8</div>
		</div>
	</div>
	</section>
	</article>
	   
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