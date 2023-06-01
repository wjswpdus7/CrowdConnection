<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>크라우드 커넥션</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=iyb12kuztf"></script>
<link rel="stylesheet" href="/resources/css/css.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=437736483bd2eff6b04ff0d209f23d6f"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="header_top">
				<a href="../"><img src="/resources/img/logo.png"></a>
				<c:if test="${sessionScope.member==null}">
					<a href="/login" id="new_iv" onClick="alert('먼저 로그인해 주세요.')">투자신청하기</a>
					<a href="/signup" id="sign_up">회원가입</a>
					<a href="/login" id="sign_in">로그인</a>
				</c:if>
				<c:if test="${sessionScope.member!=null}">
					<a href="/writeselect" id="new_iv">투자신청하기</a>
					<a href="/mypage/list" id="my_page">마이페이지</a>
					<p class="user_name">${sessionScope.member.name}님환영합니다!</p>
				</c:if>
			</div>
			<div class="gnb">
				<div class="gnb_button">
					<a href="../">홈</a> <a href="../investment/list">투자</a> <a
						href="../partner/list">동업</a> <a href="../survey/list">수요조사</a> <a
						href="../customer/list">고객센터</a>
				</div>
				<div class="search_box">
					<input type="text" placeholder="검색어를 입력해주세요"> <a href=""><img
						src="/resources/img/search.png"></a>
				</div>
			</div>
		</div>
	</header>
	<div style="margin: 0 auto; text-align: left; width: 80%;">
		<h2>수요조사 태그 등록하기</h2>
		<p style="font-size: 13px">원하는 곳을 클릭후 태그명을 등록해주세요.</p>
	</div>

	<div id="map" style="width: 80%; height: 500px; margin: 0 auto;"></div>
	<form method="post">
		<div style="margin: 0 auto; text-align: center; width: 80%;">

			<label>태그 명 : </label> <input type="text" name="name">
			<div>
				<input type="text" name="offsetY" class="offsetY" hidden> <input
					type="text" name="offsetX" class="offsetX" hidden>
			</div>
		</div>

		<div style="margin: 0 auto; text-align: right; width: 80%;">
			<button type="submit">등록</button>
			<a href="list"><button type="button"
					class="btn btn-bm btn-primary">뒤로</button></a>
		</div>
	</form>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(36.35123238985505,
					127.45425446148072), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption);
		var marker = new kakao.maps.Marker({

		});
		// 지도에 마커를 표시합니다
		marker.setMap(map);

		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

			// 클릭한 위도, 경도 정보를 가져옵니다 
			var latlng = mouseEvent.latLng;
			console.log(latlng)
			// 마커 위치를 클릭한 위치로 옮깁니다
			marker.setPosition(latlng);

			var cmLat = mouseEvent.latLng.getLat();
			var cmLng = mouseEvent.latLng.getLng();

			var latitudeInput = document.querySelector('.offsetY');
			if (latitudeInput) {
				latitudeInput.value = cmLat;
			}
			var longitudeInput = document.querySelector('.offsetX');
			if (longitudeInput) {
				longitudeInput.value = cmLng;
			}

		});
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(36.35123238985505,
						127.45425446148072), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(36.35123238985505,
					127.45425446148072), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition) {

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}
	</script>
	<div>
		<div class="footer">
			<div class="container">
				<div class="top">
					<a href="../"><img src="/resources/img/footimg.png"></a>
				</div>
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
							<a href="https://github.com/malnim/CC-team"><img
								src="/resources/img/footer.png"></a>
							<p>Yu Hyeong Ju</p>
						</div>
						<div class="image">
							<a href="https://github.com/malnim/CC-team"><img
								src="/resources/img/footer.png"></a>
							<p>Jeon Je Yeon</p>
						</div>
						<div class="image">
							<a href="https://github.com/malnim/CC-team"><img
								src="/resources/img/footer.png"></a>
							<p>Lee Chi Su</p>
						</div>
						<div class="image">
							<a href="https://github.com/malnim/CC-team"><img
								src="/resources/img/footer.png"></a>
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