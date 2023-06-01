<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라운드 커넥션</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/css.css">
<link rel="shortcut icon" href="/resources/img/favicon.ico">
<style>
.txm {
	text-align: center;
}
.hc {
	text-align: center;
	color: #102b88;
	padding-top: 80px; 
	font-size: 32px;
}

.top1{
	padding-top: 30px;
	font-size: 2.1em;
	font-weight:bold;
	color: #565656;
}
.top2{
	padding-top: 60px;
	font-size: 2em;
	font-weight:bold;
	color: #555555;
}
body {
	font-family: 'Noto Sans KR', sans-serif;
}
.p2{
	color: #999999;
	font-size: 16px;
}

.p3{
	color: #999999;
	padding-bottom: 100px;
	font-size: 16px;
}

.dropdown-content{
  display : none;
  position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
 
}

.dropdown-content a{
  display : block;
  padding: 10px 10px;
    font-size: 1.7rem;
    font-weight: 600;
    margin: 0 50px;
  
   
}

a.dropbtn {
    padding: 10px 10px;
    font-size: 1.7rem;
    font-weight: 600;
    margin: 0 50px;
}

.dropdown:hover .dropdown-content {
  display: block;
  
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
   
   <div style=" padding-left: 15%; padding-right: 15%;">
	<div>
		<h1 class="hc">크라우드펀딩 알아가기</h1>
		<div class="top2">1. 크라우드 펀딩이란?</div>
		<hr size="1" align="center" width="1080px;" color="#e6e6e6">
		<p class="p2">크라우드펀딩은 군중 또는 다수를 뜻하는 영어 단어 ‘크라우드(crowd)’와 자금조달을 뜻하는 ‘펀딩(funding)’을 조합한 용어로, 창의적 기업가를 비롯한 자금수요자가 인터넷 등의 온라인상에서 자금모집을 중개하는 자(크라우드펀딩 중개업자)를 통하여 불특정다수의 소액투자자로부터 자금을 조달하는 행위를 말합니다.
크라우드펀딩은 금융중개기관(예: 은행)을 통하는 간접 금융과 달리, IT 기술의 발전을 기반으로 인터넷 등 온라인을 통해 연결된 자금수요자들이 크라우드펀딩 중개업체를 통하여 직접 자금을 조달하는 직접 금융의 한 형태로 볼 수 있습니다.</p>
		
		<div class="top1">2. 크라우드펀딩 제도의 도입배경</div>
		<hr size="1" align="center" width="1080px;" color="#e6e6e6">
		<p class="p2">창업을 시작할때 유망한 사업 계획이나 아이디어를 가지고 있더라도 이를 사업화할 자금을 조달하는 것은 쉽지 않습니다. 정부에서도 창조경제 활성화 및 청년 일자리 창출을 위하여 창업 초기 기업에 대한 엔젤투자 활성화, 정책자금 지원 등 다각적인 대책을 강구하고 있으나, 사업 성공 여부의 불확실성이 높고 담보 자산이 부족한 초기 기업의 자금조달 수단은 제한적인 것이 현실입니다. 

크라우드펀딩은 주로 수익실현 이전 단계의 초기 기업이 고려할 수 있는 자금조달 방안으로, 투자자 측면에서는 엔젤투자(Angel) 또는 창업 초기단계의 기업에 투자하는 벤처캐피탈(VC)의 투자 영역과 유사합니다.
리워드형 등 다양한 유형의 크라우드펀딩 시장이 성장함에 따라, 기존의 중소벤처기업 지원정책과 더불어 자금조달 활성화를 위한 대안적인 채널로서 크라우드펀딩 시장 육성의 필요성이 높아졌습니다.
아울러, 창업 기업가를 빙자한 무분별한 자금모집행위, 무자격 중개업자의 난립 등으로 인한 투자자 피해를 방지하기 위하여 제도적 뒷받침을 통해 건전한 시장을 조성해야 한다는 공감대가 형성되었습니다. 

크라우드펀딩이 활성화되기 위한 전제조건으로 금융의 기본 명제인 ‘신뢰성’이 확보되어야 합니다. 2015년 7월 자본시장과 금융투자업에 관한 법률(이하 “자본시장법”) 개정을 통하여 ‘온라인소액투자중개’라는 이름으로 투자형 크라우드펀딩이 법제화 됨에 따라 크라우드펀딩의 신뢰 기반을 갖추게 되었습니다.</p>
		
		<div class="top1">3. 크라우드펀딩 프로젝트란?</div>
		<hr size="1" align="center" width="1080px;" color="#e6e6e6">
		<p class="p2">크라우드펀딩을 통해 진행하는 프로젝트는 진행자의 아이디어를 현실로 만들기에 효과적인, 세계에서 가장 주목받는 방법 중 하나입니다. 또한 진행자들의 제품이나 아이디어에 대한 예비 참여자들에 대한 홍보 활동뿐 아니라 기존 참여자들과의 소통의 장으로, 진행자들이 꿈에 한걸음 더 다가가는 뜻 깊은 과정입니다.</p>
		
		
		<div class="top1">4. 신뢰할만한 프로젝트들은 어떻게 찾나요?</div>
		<hr size="1" align="center" width="1080px;" color="#e6e6e6">
		<p class="p3">1) 프로젝트 진행자들이 플랫폼으로 자신의 아이디어를 가지고 오게 된 과정을 잘 살펴주세요. 어떤 사람들이 어떤 이유로 이 프로젝트를 진행하게 되었는지, 돈은 어디에 어떻게 쓰이는지, 이 프로젝트를 위해서 어떤 준비들을 했는지 꼼꼼히 확인해보세요. 또한 진행자의 홈페이지나 소셜미디어가 있다면 이런 것들도 참고하는 것이 신뢰성을 판단하는데 도움이 될 수 있습니다. 
<br>
2) 프로젝트 펀딩에 따른 리워드가 있다면 그 리워드가 얼마나 현실적이고 구체적인지 판단해 주세요.
<br>
3) 프로젝트 진행자들이 적극적으로 펀딩에 참여한 참여자들과 소통하는지 알아보세요. 댓글에 얼마나 성의껏 대답을 하는지, 프로젝트 진행에 대한 소식 업데이트는 제대로 이루어지는 지와 대중들의 조언과 평가를 받아들이는 태도를 본다면 펀딩할 만한 프로젝트인지 알 수 있습니다.</p>
		
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