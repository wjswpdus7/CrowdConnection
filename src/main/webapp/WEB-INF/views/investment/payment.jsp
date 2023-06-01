<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드 커넥션</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://pay.nicepay.co.kr/v1/js/"></script> <!-- Server 승인 운영계 -->
</head>
<link rel="stylesheet" href="/resources/css/payment.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script>
function count(type)  {
	 //HTML 문서 내에서 id 속성 값이 "result"인 요소를 찾아서 해당 요소를 resultElement 변수에 할당합니다.
		  const resultElement = document.getElementById('result');
		  
		  // resultElement은 이전에 document.getElementById('result')를 통해 얻은 HTML 요소를 가리키는 변수입니다. innerText 속성은 해당 HTML 요소의 텍스트 내용을 나타냅니다.
		  let number  = resultElement.innerText;
		  
		  /**
		  type 이 plus인 경우 number 는 number의 값을 정수로 변환한뒤, ${item.tick} 만큼 증가시킴
		  type 이 minus인 경우 number의 값을 정수로 변환한 뒤 ${item.tick}만큼 감소시킴
		 */
		  if(type === 'plus') {
		    number = parseInt(number) + ${item.tick};
		  }else if(type === 'minus')  {
		    number = parseInt(number) - ${item.tick};
		  }
		  
		  /**
		  resultElement.innerText = number;은 JavaScript 코드로,
		  resultElement라는 HTML 요소의 텍스트 내용을 number 변수의 값으로 설정하는 역할을 합니다.
		 일반적으로 HTML 요소는 다른 요소와 함께 사용되어 웹 페이지의 구조와 콘텐츠를 정의하는 데 사용됩니다. 
		resultElement.innerText는 해당 요소의 텍스트 콘텐츠에 접근하고 수정하는 방법을 제공합니다. number 변수의 값을
		resultElement의 텍스트로 설정함으로써 해당 요소에 새로운 값을 표시할 수 있습니다.
		예를 들어, resultElement가 <p> 태그를 나타내는 경우, resultElement.innerText = number;는
		<p> 태그의 내용을 number 변수의 값으로 설정합니다. 따라서 웹 페이지에서 해당
		<p> 태그의 내용은 number 변수의 값으로 업데이트됩니다.
		  
		  */
		  resultElement.innerText = number;
		}
	//const amountElement = document.getElementById('amount');은 JavaScript 코드입니다. 이 코드는 HTML 문서에서 
	//id 속성 값이 "amount"인 요소를 찾아와서 amountElement라는 변수에 할당하는 역할을 합니다.
	const amountElement = document.getElementById('amount');
	
	
	amountElement.innerText = `투자금액: ${number} 원`;

	function serverAuth() {
		 const amount = document.getElementById('result').innerText;
		 
		 AUTHNICE.requestPay({
			  clientId: 'S2_af4543a0be4d49a98122e01ec2059a56',
			  method: 'card',
			  orderId: '62747144-9934-42c7-a98e-99e1d5e90a72',
			  amount: amount,
			  goodsName: '투자',
			  returnUrl: 'http://2305.team.callon.kr/investment/signature/${item.id}', 
			//http://localhost:9090/
			  
			  //API를 호출할 Endpoint 입력
			  fnError: function (result) {
			    alert('개발자확인용 : ' + result.errorMsg + '')
			  }
			}).then(function (result) {
			  // 결제가 성공한 경우, amount 값을 서버로 보냄
			  fetch('http://localhost:9090/investment/signature/${item.id}', {
			    method: 'POST',
			    headers: {
			      'Content-Type': 'application/json'
			    },
			    body: JSON.stringify({ amount: amount })
			  })
			  .then(function(response) {
			    // 응답 처리
			    if (response.ok) {
			      // 서버 응답이 성공인 경우
			      console.log('amount 값을 서버로 전송했습니다.');
			    } else {
			      // 서버 응답이 실패인 경우
			      console.error('서버 응답이 실패했습니다.');
			    }
			  })
			  .catch(function(error) {
			    // 오류 처리
			    console.error('오류 발생:', error);
			  });
			});

	}
</script>
<style>
</style>
<body>
<div id="background">
	<div id="back">
		<div>
			<a href="../../../detail/${item.id}"><img src="/resources/img/돌아가기.png"></a>
		</div>
		<div>
			<img src="/resources/img/결제진행 이미지.png">
		</div>
		<div class="payment_content">
			<img class="payment_content_img" src="/resources/img/image1.png">
			<div class="payment_content_text">종목<br>${item.title}</div>
			<div class="payment_content_amount"></div>
			<div class="payment_plus_minus">
				<input class="payment_button" type='button' onclick='count("plus")' value='+'/>
				<input class="payment_button" type='button' onclick='count("minus")' value='-'/>
			</div>
			<div id="amount">
				<div>투자금액:</div>
				<div id='result'>${item.tick}</div>
				<div>원</div>
			</div>
			<button id="payment" onclick="serverAuth()">투자하기</button> 
		</div>	
		<div></div>
	</div>
</div>
</body>
</html>
