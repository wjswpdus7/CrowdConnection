<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드 커넥션</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/signature.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="shortcut icon" href="/resources/img/favicon.ico">
	
<script>
	  function saveimage() {
	    var canvas = document.getElementById("signatureCanvas");
	    //는 JavaScript 코드로서 HTML 문서 내에 있는 id 속성이 "signatureCanvas"인 요소를 찾아서 해당 요소를 변수 canvas에 할당하는 역할을 합니다.
	    var image = canvas.toDataURL();
		//canvas.toDataURL()은 HTML5 Canvas 요소에 그려진 그림을 데이터 URL 형식으로 변환하는 메서드입니다. 이 메서드를 호출하면 Canvas에 그려진 그림을 이미지 데이터로 변환하고, 그 데이터를 문자열 형태로 반환합니다.
	   
	    
	    const img = {
	      "url": image
	    };
	    console.log(img);
		//const img 는 하나의 객체이고 url은 속성
		//이 코드를 보면, img 객체는 url 속성을 사용하여 이미지의 URL을 저장하는 용도로 사용될 수 있습니다. 
		
	    const reqJSON = JSON.stringify(img);
		
		//이 코드는 JavaScript에서 img 객체를 JSON 형식의 문자열로 변환하는 작업을 수행합니다.
		
	    var xhr = new XMLHttpRequest();
		//XMLHttpRequest는 서버와 비동기적으로 데이터를 교환하기 위한 JavaScript의 내장 객체입니다. 이 객체를 사용하면 웹 페이지에서 서버로 데이터를 보낼 수도 있고, 서버로부터 데이터를 받아올 수도 있습니다.
		
	    xhr.open("POST", "saveimage/${item.id}", true);

	    xhr.setRequestHeader("Content-Type", "application/json");

	    var button = document.getElementById("saveButton");
	    button.disabled = true;

	    xhr.onreadystatechange = function() {
	      if (xhr.readyState === XMLHttpRequest.DONE) {
	        if (xhr.status === 200) {
	        	 alert("서명이 저장되었습니다.");
	                button.disabled = false; // 서명 저장 성공 후 버튼 활성화
	                document.getElementById("success_button").disabled = false;
	        } else {
	          alert("서명 저장에 실패했습니다.");
	        }

	      }
	    };

	    xhr.send(reqJSON);
	  }
	  
	

	
</script>
<style>
#background {
	width: 100%;
	border: 1px solid black;
}

#back {
	width: 1200px;
	margin: 0 auto;
}

h1 {
	text-align: center;
}

#signatureCanvas {
  border: 1px solid black;
  margin: 15px;
  border-radius: 5px;
}
#canvassize{
	display:flex;
	justify-content: center;
	align-items: center;
}

#saveButton{
		border-radius:5px;
		border:0px;
		font-size:16px;	
		color:white;
		height:50px;
}
</style>
<body>
	<div id="background">
		<div id="back">
			<div>
				<a href="../list"><img src="/resources/img/돌아가기.png"></a>
			</div>
			<div>
				<img src="/resources/img/전자서명 이미지.png">
			</div>
		</div>
		<div class="wrap">
			<div class="logo">
				<h1>투자계약서</h1>
			</div>
			<div class="contents">
				<form action="/" method="POST" id="form__wrap">
					<ul class="terms__list">
						<li class="terms__box">

							<div class="terms__content">
								투자자 ({투자자})[이하 갑 이라한다] 창업자({창업자}) 는 다음과 같은 조건으로 투자계약을 체결한다.

								<h3>제 1조 (계약의 목적)</h3>
								<br>
								<p>본 계약은 "을"의 (투자)에 관하여 투자함에 따라 그 구체적인 내용과 필요한 제안사항을 결정하고
									"갑" 과 "을"사이의 권리의무관계를 명확히 규정함을 그 목적으로 한다.</p>
								<br>

								<h3>제 2조 (투자의 전제조건)</h3>
								<br>
								<p>갑은 본 계약에 따른 투자를 위해 우선 을이 다음의 조건을 충족할 것을 요구할 수 있으며, 그 조건이
									충족되지 않을 경우 본계약은 성립되지 못하고 파기되는 것으로 한다.</p>
								<br>

								<h3>제 3조 (투자금의 지급)</h3>
								<br>
								<p>"갑" 은 아래의 내용으로 "을"에게 투자금을 지급하기로 한다.</p>
								<br> 1.투자금액 : (투자금액) 2. 지급시기 : todate
							</div>

							<div class="input__check">
								<input type="checkbox" name="agreement" id="termsOfService2"
									value="termsOfService2" required /> <label
									for="termsOfService2" class="required">투자 동의서</label>												
							</div>
						</li>
					</ul>
					<div id="canvassize">
					<canvas id="signatureCanvas"></canvas>
					<button id="saveButton" type="button" onclick="saveimage();" class="btn btn-primary" >서명저장</button>
					
					</div>
					
					<button id="success_button"type="submit" onclick="location.href='success/${id}'" class="next-button" disabled>확인</button>
					
					<!-- <script src="/resources/js/signature.js"></script> -->
					<script src="/resources/js/signature2.js"></script>
				</form>
			</div>
		</div>
	</div>
	<script>
	
	(function() {
		  "use strict";

		  const form = document.querySelector("#form__wrap");
		  const checkBoxes = document.querySelectorAll(".input__check input");
		  const submitButton = document.getElementById("success_button");
		  var button = document.getElementById("saveButton"); 
		  var check = false;
		  
		  
		  const agreements = {
		    termsOfService2: false,
		    check: false
		  };
	
	
		  
		  form.addEventListener("submit", (e) => e.preventDefault());

		  checkBoxes.forEach((item) => item.addEventListener("input", toggleCheckbox));

		  function toggleCheckbox(e) {
		    const { checked, id } = e.target;
		    agreements[id] = checked;
		    this.parentNode.classList.toggle("active");
		    toggleSubmitButton();
		  }

		  function toggleSubmitButton() {
		    const { termsOfService2} = agreements;
		    if (termsOfService2 && check) {
		      submitButton.disabled = false;
		    } else {
		      submitButton.disabled = true;
		    }
		  }
		  
		  button.addEventListener("click", function() {
			    check = true;
			    toggleSubmitButton();
			 });

	})();
	</script>

</body>
</html>