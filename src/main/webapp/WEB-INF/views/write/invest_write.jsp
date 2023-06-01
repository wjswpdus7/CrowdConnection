<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="stylesheet" href="/resources/css/write.css">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>

$(function() {
	  $("#summernote").summernote({
	    lang: 'ko-KR',
	    'height':'500px',
	    placeholder:"상세 내용을 작성해주세요.",
	    disableResizeEditor:true
	    
	  });
	});

$(document).ready(function() {
	  $("#attachs2").on("click", ".delete", function() {
	    const div = $(this).closest(".input-group");
	    div.remove();
	  });

	  $("#add2").click(function() {			
	    const div = $("<div>");
	    div.addClass("input-group");
	    div.addClass("mb-3");

	    const input = $("<input>");
	    input.attr("type", "file");
	    input.attr("name", "InvestAttach");
	    input.addClass("form-control");
	    input.addClass("form-control-sm");

	    const button = $("<button>");
	    button.attr("type", "button");
	    button.addClass("btn");
	    button.addClass("btn-sm");
	    button.addClass("btn-outline-danger");
	    button.addClass("delete");
	    button.text("삭제");

	    div.append(input);
	    div.append(button);

	    $("#attachs2").append(div);			
	  });
	});
</script>
</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="header_top">
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
					<input type="text" placeholder="검색어를 입력해주세요"> <a href=""><img
						src="/resources/img/search.png"></a>
				</div>
			</div>
		</div>
	</header>

	<div class="background">
		<div class="page_wrap">
			<div class="process_nav">
				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">기본정보작성</li>
					<li class="tab-link" data-tab="tab-2">상세정보</li>
					<li class="tab-link" data-tab="tab-3">계약서작성</li>
				</ul>
			</div>
			<div class="write_wrap">
				<!--  <form method="post" enctype="multipart/form-data">  -->
				<div id="tab-1" class="tab-content current">
					<div id="tab_top">
						<h1>기본정보작성</h1>
						<p>필수적인 정보 입력페이지 입니다.</p>
					</div>

					<div class="title_wrap" id="must_wt">
						<p>제목</p>
						<input name="title" type="text" placeholder="제목을 입력해주세요.">
					</div>
					<div class="title_wrap" id="must_wt">
						<p>서브타이틀</p>
						<input name="subTitle" type="text" placeholder="서브타이틀을 입력해주세요.">
					</div>
					
					<p>썸네일 이미지*</p>
					<form method="post" enctype="multipart/form-data" action="WriteAttachThumbnail">
						<div class="thumbnail_wrap" id="must_wt">
							<div>
								<label>첨부파일:
								</label>
								<div id="attachs">
									<input type="file" name="filename">
								</div>
							</div>
						</div>
						 <input type="submit" value="등록">
					</form>
					
					 
					<p>대표 이미지*</p>
						<form method="post" enctype="multipart/form-data" action="investAttach">
							<div class="form-group">
					<label>첨부파일: <button type="button" id="add2" class="btn btn-outline-secondary">추가</button></label>
					<div id="attachs2">
						<div class="input-group mb-3">
						  <input type="file" name="InvestAttach" class="form-control form-control-sm">
						</div>						
					</div>					
				</div>
				<input type="submit" value="등록">
					</form>
						
					<div class="price_wrap" id="must_wt">
						<p>투자 금액 설정</p>
						<div>
							<label>펀딩 목표액</label> <input name="goolMoney" type="number"
								class="input1" step="1000" min="0" placeholder="최소단위 1000">
						</div>

						<div>
							<label>주문당 결제금액 단위</label> <input name="tick" type="text"
								class="input1" step="1000" min="0" placeholder="최소단위 1000">
						</div>
					</div>

					<div class="date_wrap" id="must_wt">
						<p>목표기간</p>
						<input name="endDate" type="date">
					</div>
					<div>
						<p>홈페이지</p>
						<input name="homepage" type="text">
					</div>
					<button class="btn btn-sm" class="bt"
						onclick="location.href ='invest_write2'">다음페이지로 가기</button>
				</div>


				<div id="tab-2" class="tab-content">
					<div id="tab_top">
						<h1>상세정보</h1>

						<p>사업을 소개하는 글을 상세하게 작성해주세요.</p>
					</div>

	<form action="summernote" method="POST" enctype="multipart/form-data">
    <div>
        <textarea name="contents" id="summernote"></textarea>			
    </div>
    <button type="submit">이미지 보내기</button>
</form>



				</div>

				<div id="tab-3" class="tab-content">
					<div id="tab_top">
						<h1>계약서 작성</h1>
						<p>계약서를 확인하고 추가할 내용을 추가해주세요.</p>
					</div>

					<div>
						<textarea style="height: 500px;" id="summernote"
							class="form-control" name="content" placeholder="본문에 내용을 입력해주세요">
					
										                         투자계약서
					
					
						투자자 ({투자자})[이하 갑 이라한다] 창업자({창업자}) 는 다음과 같은 조건으로 투자계약을 체결한다.

						제 1조 (계약의 목적)
						
						본 계약은 "을"의 (투자)에 관하여 투자함에 따라 그 구체적인 내용과 필요한 제안사항을 결정하고 "갑"
							과 "을"사이의 권리의무관계를 명확히 규정함을 그 목적으로 한다.
						

						제 2조 (투자의 전제조건)
						
					     갑은 본 계약에 따른 투자를 위해 우선 을이 다음의 조건을 충족할 것을 요구할 수 있으며, 그 조건이
							충족되지 않을 경우 본계약은 성립되지 못하고 파기되는 것으로 한다.
						

						제 3조 (투자금의 지급)
						
						"갑" 은 아래의 내용으로 "을"에게 투자금을 지급하기로 한다.
						 1.투자금액 : (투자금액) 2. 지급시기 : todate
					
					
					</textarea>
					</div>

					<div>
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	$(document).ready(function() {
	    $('#summernote').summernote({
	        callbacks: {
	            onImageUpload: function(files) {
	                uploadImage(files[0]);
	            }
	        }
	    });

	    function uploadImage(file) {
	        var formData = new FormData();
	        formData.append('image', file);

	        $.ajax({
	            url: '/summernote', // 이미지 업로드를 처리하는 서버 엔드포인트 주소
	            method: 'POST',
	            data: formData,
	            processData: false,
	            contentType: false,
	            success: function(response) {
	                var image = $('<img>').attr('src', response.imageUrl);
	                $('#summernote').summernote('insertNode', image);
	            },
	            error: function(xhr, textStatus, error) {
	                console.log('이미지 업로드에 실패했습니다:', error);
	            }
	        });
	    }

	    $('form').on('submit', function(e) {
	        e.preventDefault();
	        var contents = $('#summernote').summernote('code');
	        // 컬럼에 저장하고자 하는 코드 작성 및 서버로 전송 등의 로직 수행
	        // 예를 들어, Ajax를 사용하여 서버에 데이터를 전송하는 등의 작업이 필요합니다.
	        console.log(contents);
	        $(this).submit(); // 서버로 폼 데이터 전송
	    });
	});
	            
</script>

	<script>
	
	
	$(document).ready(function(){
	    $('ul.tabs li').click(function(){
	       var tab_id = $(this).attr('data-tab');

	       $('ul.tabs li').removeClass('current');
	       $('.tab-content').removeClass('current');

	       $(this).addClass('current');
	       $("#"+tab_id).addClass('current');
	   });
	});
	
	</script>
</body>
</html>