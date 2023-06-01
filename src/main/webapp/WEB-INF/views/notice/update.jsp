<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/css.css">

<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/summernote/summernote-lite.css">

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<title>Insert title here</title>

<script>
        //섬머노트
        $('#summernote').summernote({
          placeholder: '프로젝트를 상세하게 소개하는 글을 작성해주세요.',
          tabsize: 2,
          height: 500,
          toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview', 'help']]
          ]
        });
</script>


<style>
.hc {
	text-align: center;
	color: #102b88;
	padding-top: 80px; 
	font-size: 34px;
	padding-right: 40px;
}
.min {
  width: 1030px;
  height: 40px;
  font-size: 15px;
  border: 1px solid;
  border-radius: 10px;
  border-color:#e6e6e6;
  outline: none;
  padding-left: 20px;
  background-color: #fafafa;
}
.min2 {
  width: 600px;
  height: 40px;
  font-size: 15px;
  border: 1px solid;
  border-radius: 10px;
  border-color:#e6e6e6;
  outline: none;
  padding-left: 20px;
  background-color: #fafafa;
}
.m10{
	border: 1px solid;
  border-radius: 10px;
  border-color:#e6e6e6;
  outline: none;
  background-color: #fff;
   font-size: 14px;
  width: 210px;
  height: 28px;
  text-align: center;
  padding: 7px 0px 3px 20px;
   ;
}
.m13{
	text-align: left;
	padding-top: 40px;
}
.m11{
	padding-top: 60px;
}
.m12{
	text-align: right;
	padding: 15px 0px  40px  0px;
	font-size: 16px;
}
.lab11{
	padding: 0px 20px 0px 0px;
	font-size: 20px ;
	text-align: left;
}
.lab12{
	font-size: 20px ;
}

.b12 {
 
  margin: 0;
  padding: 0.5rem 1rem;
  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  text-decoration: none;
  background-color:#6bd3f7;
  display: inline-block;
  width: auto;
  color:#fff;

  border: none;
  border-radius: 4px;
}
.b11{
	text-align: right;
	padding: 20px 15px 60px  0px;
}
</style>
<script>

	$(function() {
		$("#summernote").summernote();
	});
</script>

</head>
<body>

<header>
        <div class="header_wrap">
            <div class="header_top">
                    <a href="../"><img src="/resources/img/logo.png"></a>
                    <a href="writeselect" id="new_iv">투자신청하기</a>
                    <a href="signup" id="sign_up">회원가입</a>
                    <a href="login" id="sign_in">로그인</a>
            </div>
            <div class="gnb">
                <div class="gnb_button">
                    <a href="../">홈</a>
                    <a href="../investment/list">투자</a>
                    <a href="../partner/list">동업</a>
                    <a href="../survey/list">수요조사</a>
                 </div>
                 
			<div class="dropdown" >
                   <a href="/notice/getail" class="dropbtn">고객센터</a>
                   	     <div class="dropdown-content">
                   	        <a href="/notice/list">공지사항</a>
        					<a href="/notice/detail">게시판</a>
        					<a href="/notice/guide">투자소개</a>
        				</div>
                  	 </div>
                    
                
                <div class="search_box" style="display: inline-block;">
                    <input type="text" placeholder="검색어를 입력해주세요">
                    <a href=""><img src="/resources/img/search.png"></a>
                </div>
            </div>
        </div>
    </header>
	
	<div style=" padding-left: 15%; padding-right: 15%;">
		<form method="post">
		<div>
			<h2 class="hc">변경할 게시물을 입력하세요</h2>
		</div>
		<div class="m11">
			<label class="lab11">제목 :</label>
			<input type="text" name="title" value="${item.title}" maxlength="40" class="min"> 
		</div>

		<div class="m13">
			<label class="lab12">내용 :</label>
			<textarea name="contents"  id="summernote" rows="20" cols="80">${item.contents}</textarea>
		</div>
		
		<div>
			<select name="grade">
				<option value="1">바로 작성하기</option>
				<option value="2">미리 작성하기</option>
			</select>
		</div>
		
		<div class="m12">
			<label>첨부파일 :</label>
			<input type="file"  class="m10"> 
		</div>     
		

	
	<div class="b11">
    	<a href="../list"><button class="b12">등록</button></a>
    </div>
    
    <div class="b11">
    	<a href="../"><button class="b12">등록 취소</button></a>
    </div>
    </form>
</div>
	<div> 
  <div class="footer">		
	<div class="container">
		<div class="top"><a href="../"><img src="/resources/img/footimg.png"></a></div>
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
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
      					<p>Yu Hyeong Ju</p>
    				</div>
    				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
      					<p>Jeon Je Yeon</p>
    				</div>
    				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
      					<p>Lee Chi Su</p>
    				</div>
 	  				<div class="image">
      					<a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
     					 <p>Lee Si Ho</p>
    				</div>
    			</div>
  		  </div>
		
	</div>	
  </div>
       		<address class="top">
       			<strong>copyrightwebstoryboyAll rights Reserved.</strong>
       		</address>
</div> 
</body>
</html>