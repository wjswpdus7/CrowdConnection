<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관 구간</title>
</head>
<body>
	<div style="overflow: sscroll;">
		<fieldset>
			<h3>이치수씌</h3>
			<p>건강하세요</p>
			<input type="radio" name="agree_1st" value="yes">(필수)동의
			<input
				type="radio" name="agree_1st" value="no">동의하지 않습니다
		</fieldset>
		<fieldset>
			<h3>전제연씌</h3>
			<p>건강하세요</p>
			<input type="radio" name="agree_2nd" value="yes">(필수)동의
			<input
				type="radio" name="agree_2nd" value="no">동의하지 않습니다
		</fieldset>
		<fieldset>
			<h3>이시호씌</h3>
			<p>건강하세요?</p>
			<input type="radio" name="agree_3rd" value="yes">(선택)동의<input
				type="radio" name="agree_3rd" value="no">동의하지 않습니다
		</fieldset>
		
		<div>
			<a href="step2"><button type="button">진행하기</button></a>
			<a href="../"><button type="button">돌아가기</button></a>
		</div>

	</div>
</body>
</html>