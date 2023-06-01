<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드커넥션</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/resources/css/css.css">

<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<style>
.topp {
   padding-top: 40px;
}
.im3 {
   padding-top: 40px;
   text-align: center;
}
.topp2 {
   padding-bottom: 30px;
   text-align: center;
   font-size: 30px;
}
.bot2 {
   padding-bottom: 40px; 
}
.pa1 {
   padding-left: 400px;
   padding-right: 400px;
   padd
}


.g2{
   width: 1300px;
  margin-left: auto;
  margin-right: auto;
}
.layout{
    max-width: 800px;
    margin: 0 auto;
}

body{
  font-family: 'Open Sans', sans-serif;
}

details{
  background-color: #ffffff;
  color: #000000;
  font-size: 1.5rem;
    border: 1px solid #9fa4a8;
  border-radius: 10px;
  margin-bottom: 20px;
}

summary {
  padding: .5em 1.3rem;
  list-style: none;
  display: flex;
  justify-content: space-between;  
  transition: height 1s ease;
  color: black;
}

summary::-webkit-details-marker {
  display: none;
}

summary:after{
  content: "\002B";
}

details[open] summary {
    border-bottom: 1px solid #aaa;
    margin-bottom: .5em;
}

details[open] summary:after{
  content: "\00D7";
}

details[open] div{
  padding: .5em 1em;
}
.customer_list_content{
	font-size:16px;
}

h3{
	font-size:24px;
}

h2{
	font-size:20px;
}	
</style>
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
    <hr>
    
   <div style=" padding-left: 15%; padding-right: 15%;">   
   <div style="text-align: center; padding-top: 100px; padding-bottom: 50px;" >
      <h1 style="font-size: 32px;">이용안내도</h1>
      <hr>
   </div>
      <div class="im3">
      <h2 style="text-align: left;">창업자</h2>
      <img src="/resources/img/custimg5.png" style="width: 1100px; height: 310px;">
      <h3 style="color: #102b88; padding-top: 30px;">크라우드커넥션은 창업자들에게 온라인으로 자금을 모집하고 동업자를 구할 수 있는 기회를 제공합니다</h3>
      <div style="text-align: left; padding-top: 30px;">
      <p class="customer_list_content"><strong> 재정적 지원 :</strong> 크라우드 펀딩 사이트를 통해 창업자는 자신의 사업 계획서를 올려 후원자들로부터 사업을 시작하거나 확장하는 데 사용할 수 있는 자금을 조달할 수 있습니다.</p>
      <p class="customer_list_content"> <strong>마케팅 및 홍보 지원 : </strong>창업자는 제품이나 서비스를 홍보하고 잠재적인 고객에게 다가갈 수 있습니다.</p>
      <p class="customer_list_content"><strong>네트워크 구축 : </strong>창업자는 잠재적인 고객, 투자자 및 비즈니스 파트너와 네트워크를 형성할 수 있습니다.</p>
      </div>
   </div>
   

      <div class="im3">
      <h2 style="text-align: left;">투자자</h2>
      <img src="/resources/img/custimg4.png" style="width: 1100px; height: 310px;">
      <h3 style="color: #102b88; padding-top: 30px;">크라우드커녁센은 다양한 사람이 온라인으로 쉽고 편리하게 투자할 수 있는 기회를 제공합니다</h3>
      <div style="text-align: left; padding-top: 30px;">
      <p class="customer_list_content"><strong>다양한 사업에 투자기회 제공: </strong>자영업자를 위한 크라우드커넥션을 통해 투자자는 카페, 레스토랑, 소매점과 같은 다양한 비즈니스 기회에 투자할 수 있습니다.</p>
      <p class="customer_list_content"><strong>낮은 투자 임계값: </strong>자영업자를 위한 크라우드커넥션에서는 일반적으로 투자 임계값이 낮기 때문에 투자자는 소액의 돈으로 비즈니스에 투자할 수 있습니다.</p>
      <p class="customer_list_content"><strong>새로운 사업 아이디어에 대한 노출: </strong>투자자가 새로운 사업 아이디어에 대해 확인하고 잠재적으로 성공할 수 있는 사업에 투자할 수 있는 기회를 제공할 수 있습니다.</p>
      </div>
   </div>

   <div class="topp">
   <h1 class="topp2">FAQ</h1>
</div>
 <div>
  <details>
  <summary>크라우드펀딩이란 무엇인가요?</summary>
  <div>
   크라우드펀딩은 일반 대중으로부터 작은 금액의 기부 또는 투자를 모아 프로젝트, 제품, 사업 등의 자금을 조달하는 방식입니다. 
일반인들에게 자금 조달의 기회를 제공하고, 프로젝트 개설자나 기업 등이 자금을 확보할 수 있는 새로운 방법으로 인기를 얻고 있습니다.
  </div>
</details>
</div>

  <div>
  <details>
  <summary>크라우드펀딩에 참여하는 것은 어떤 위험을 가지고 있나요?</summary>
  <div>
 크라우드펀딩에 참여하는 것은 일부 위험을 내포할 수 있습니다. 예를 들어, 프로젝트가 실패할 수도 있고, 모금된 자금이 원래 목적과 다른 용도로 사용될 수도 있습니다.
  따라서 펀딩할 프로젝트를 신중하게 선택하고, 프로젝트 창작자의 신뢰성과 계획을 검토하는 것이 중요합니다
  </div>
</details>
</div>

  <div>
  <details>
  <summary>라우드펀딩을 통해 성공적으로 자금을 모으기 위한 팁과 전략은 무엇인가요?</summary>
  <div>
   <strong>1. 명확하고 매력적인 프로젝트 설명:</strong> 프로젝트를 설명할 때는 명확하고 매력적인 내용을 제공해야 합니다. 프로젝트의 목적과 장점, 예상되는 결과물에 대해 상세히 설명하고, 흥미로운 비주얼 요소나 영상 등을 활용하여 사람들의 관심을 끌어야 합니다.
	<br>
	<strong>2. 보상의 유혹과 가치: </strong>기여자들에게 매력적인 보상을 제공하는 것은 중요합니다. 보상은 기여자들에게 프로젝트에 대한 가치를 제공하는 동시에, 기여 유인을 제공해야 합니다. 보상의 종류와 수준을 신중히 선택하여 기여자들의 관심을 끌고 참여를 유도해야 합니다.
	<br>
	<strong>3. 업데이트와 소통: </strong>프로젝트 진행 동안 기여자들에게 정기적으로 업데이트를 제공해야 합니다. 프로젝트의 진행 상황, 이슈, 성과 등을 공유하여 기여자들에게 신뢰를 주고 관심을 유지할 수 있습니다. 또한, 기여자들과의 소통을 유지하여 피드백을 수렴하고 개선점을 반영할 수 있습니다.
  </div>
</details>
</div>

  <div>
  <details>
  <summary>크라우드펀딩과 은행 대출의 차이점은 무엇인가요?</summary>
  <div>
  금융권에서의 대출과 펀딩의 차이점은 대출은 물적, 인적 담보가 필요하지만 그게 창업자에게 큰 장벽이 된다. 그 대신 크라우드 펀딩에서는 누구든지 특별한 조건 없이 자금 조달이 가능하며 또한 크라우드 펀딩은 대출을 통한 조달에 비해 
  상환 또는 이자 발생에 대한 부담이 덜하다. 이러한 근거를 통해 창업자들은 우리 플랫폼에 창업 등록을 함과 동시에 시장 초기반응을 관찰할 수 있으며 창업자는 이를 통해 개선사항을 점검할 수 있고 참여자들은 네트워크를 형성함으로써 공동창업자의 역할을 하며 창업의 초기자금 형성에 도움이 된다.
  </div>
</details>
</div>


<div class="topp">
   <h3>혹시, 이외에 궁금한 점이 있으신가요?</h3>
</div>
   </div>
<!-- Button trigger modal -->
<div style="text-align: center; padding-bottom: 30px;" class="topp">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    쪽지로 문의하기
</button>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title fs-5" id="exampleModalLabel">문의하기</h3>               
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body topp">
         <label>ID</label>
        <input class="form-control " type="text" maxlength="20" placeholder="아이디을 입력해주세요.">
      <div class="topp">
        <input class="form-control " type="text" maxlength="25" placeholder="제목을 입력해주세요.">
       </div> 
       <div class="topp">
        <textarea class="form-control " maxlength="300" style="height: 300px;"placeholder="내용을 입력해주세요.">
        </textarea>
         </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>
        <button type="button" class="btn btn-primary">보내기</button>
      </div>
    </div>
  </div>
</div>
 <div> 
  <div class="footer">      
   <div class="container">
      <div class="top"><a href="../"><img src="/resources/img/footimg.png" ></a></div>
   <div class="s1">
      <div>
                <div>
                <h2 class="TM12">Team Members</h2>
              </div>
                <div class="ttt1">
                   <p>유형주 : gadadaa@naver.com</p>
            </div>
            <div class="ttt2">
                   <p>전제연 : gadadaa@naver.com</p>
            </div>
            <div class="ttt2">
                   <p>이치수 : gadadaa@naver.com</p>
            </div>
            <div class="ttt2">
                   <p>이시호 : gadadaa@naver.com</p>
            </div>      
      </div>
   </div>
         <div class="s2">
              <div>
                <h2 class="TM12">Team Member Github</h2>
              </div>
              <div class="image-container">
                <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Yu Hyeong Ju</p>
                </div>
                <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Jeon Je Yeon</p>
                </div>
                <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Lee Chi Su</p>
                </div>
                  <div class="image">
                     <a href="https://github.com/malnim/CC-team"><img src="/resources/img/footer.png"></a>
                     <p class="np3">Lee Si Ho</p>
                </div>
             </div>
          </div>
      
   </div>   
  </div>
             <address class="cop">
                <strong>copyrightwebstoryboyAll rights Reserved.</strong>
             </address>
</div> 
</body>
</html>