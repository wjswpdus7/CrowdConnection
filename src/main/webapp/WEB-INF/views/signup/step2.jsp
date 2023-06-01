<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼 입력 구간</title>
</head>
<body>
	<div>
		<form method="post">
			<div>
				<label>아이디</label> 
				<input type="text" id="id" placeholder="email">
			</div>
			<div>
				<label>비밀번호</label>
				<input type="password" id="password">
				<label>비밀번호 확인</label>
				<input type="password" id="pwcheck">
			</div>
			<div>
				<label>전화번호</label>
				<input type="text" id="tel">
			</div>
			<div>
				<label>주소</label>
				<input type="text" id="address" value="임시값">
			</div>
			<div>
				<label>회원선택</label>
				<select id="grade">
				<option value="1">일반회원</option>
				<option value="2">창업회원</option>
				<option value="3">기업회원</option>
				</select>
			</div>
			<div>
				<label>자기소개</label>
				<textarea rows="3" cols="3" id="contents"></textarea>
			</div>
			<div>
				<button>가입하기</button>
				<a href="../"><button type="button">돌아가기</button></a>
			</div>
		</form>
	</div>
</body>
</html>