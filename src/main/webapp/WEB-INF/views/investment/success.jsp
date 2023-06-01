<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드 커넥션</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script>
	function print_btn(print_content) {
		var initBody = document.body.innerHTML;
		window.onbeforeprint = function() {
			document.body.innerHTML = document.getElementById(print_content).innerHTML;
		}
		window.onafterprint = function() {
			document.body.innerHTML = initBody;
		}
		window.print();
	}
</script>
</head>

<style>
#background {
	width: 100%;
}

#back {
	width: 1200px;
	margin: 0 auto;
}

h1 {
	text-align: center;
}
</style>

<body>
	<div id="background">
		<div id="back">
			<div>
				<a href="../../list"><img src="/resources/img/돌아가기.png"></a>
			</div>


			<div>
				<img src="/resources/img/결제완료 이미지.png">
			</div>

			<div id="print_content">
				<h1>투자가 완료되었습니다.</h1>

				<div class="terms__content">
					투자자 ({투자자})[이하 갑 이라한다] 창업자({창업자}) 는 다음과 같은 조건으로 투자계약을 체결한다.

					<h3>제 1조 (계약의 목적)</h3>
					<br>
					<p>본 계약은 "을"의 (투자)에 관하여 투자함에 따라 그 구체적인 내용과 필요한 제안사항을 결정하고 "갑" 과
						"을"사이의 권리의무관계를 명확히 규정함을 그 목적으로 한다.</p>
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
				<div>
					<img src="/resources/img/image10.png">
					<!-- <img src="/images/${imgName}"> -->
				</div>
			</div>
			<input type="button" value="인쇄하기" id="print"
				onclick="print_btn('print_content')"></input><a href="../">홈으로</a>
		</div>

	</div>


</body>
</body>
</html>