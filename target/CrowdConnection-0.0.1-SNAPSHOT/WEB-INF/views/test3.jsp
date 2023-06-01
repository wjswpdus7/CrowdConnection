<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.g2{
	width: 900px;
  margin-left: auto;
  margin-right: auto;
}
.layout{
    max-width: 800px;
    margin: 0 auto;
}

.qna{
    list-style: none;
    margin: 0;
    padding: 0;
     max-width: 900px;
    text-align: center;
}
.qna > li{
  padding: 10px 0;
  box-sizing: border-box;
}
.qna > li:nth-child(n+1){ /* 아이템 구분 점선 */
padding-bottom: 18px;
  border-bottom: 1px dashed #808080;
}
.qna input {
  display: none;
}

.qna label { /* 제목 - 클릭 영역 */
  font-weight: bold;
  color: #000;
  margin: 20px 0 0;
  cursor: pointer;
  font-size: 1.1rem;
  color: gray;
  
  
}

.qna div { /* 내용 영역 - 기본 감춤 상태 */
  display: none;
  color: #666;
  font-size: 0.9375em;
  overflow: hidden;
  padding: 10px 0 10px 30px;
  box-sizing: border-box;
  transition: max-height 0.4s;
}
.qna input:checked + label + div { /* 내용 영역 펼침 */
  display: block;
}

.qna label::before { /* 제목 앞 화살표 */
  content: "▶";
  display: block;
  color: gray;
  margin-right: 8px;
  float:right;
}
.qna input:checked + label::before { /* 내용 펼침 상태 제목 앞 화살표 */
  content: "▼";
}
</style>
</head>
<body>
	<div class="g2">
	<ul class="qna">
            <li style="padding-top: 20px;">
                <input type="checkbox" id="qna-1">
                <label for="qna-1">뉴진스의 데뷔일은 언제인가요?</label>
                <div>
                    <p>다른 사람 명의로는 환불할 수 없습니다. 고객님 본인 명의 계좌로만 환불이 가능합니다.</p>
                </div>
            </li>
            <li style="padding-top: 30px;">
                <input type="checkbox" id="qna-2">
                <label for="qna-2">뉴진스의 대표곡은 무엇인가요?</label>
                <div>
                    <p>마이페이지에서 환불계좌 등록 및 수정이 가능합니다. 환불계좌는 주문자 명의의 본인 계좌만 등록할 수 있습니다.</p>
                    <p>주문 진행 상태가 '환불진행중' 또는 '환불완료' 에서는 환불계좌를 변경할 수 없습니다.</p>
                </div>
            </li>
            <li style="padding-top: 30px;"">
                <input type="checkbox" id="qna-3">
                <label for="qna-3">뉴진스의 음악적 스타일이나 컨셉은 어떤 것인가요?</label>
                <div>
                    <p>반품할 상품을 아직 보내지 않은 경우, 마이페이지에서 반품철회를 하실 수 있습니다.</p>
                    <p>반품철회 후 택배사에서 상품 수거가 된 것으로 확인될 경우 해당 주문은 반품처리한 것으로 재 변경됩니다.</p>
                </div>
            </li>
            <li style="padding-top: 30px;">
                <input type="checkbox" id="qna-4">
                <label for="qna-4">뉴진스의 팬덤 이름은 무엇인가요?</label>
                <div>
                    <p>부재 등의 사유로 반송된 상품은 "마이페이지 > 주문 조회"]"에서 택배사 영업소, 또는 배송 담당 택배원 연락처를 통해 재배송 요청을 할 수 있습니다. 상품이 이미 반송되어 해당 업체로 입고된 경우, 왕복 배송비를 추가 부담하셔야 합니다.</p>
                </div>
            </li>
            <li style="padding-top: 30px;">
                <input type="checkbox" id="qna-5">
                <label for="qna-5">걸그룹 뉴진스의 멤버에 누구누구 있을까요?</label>
                <div>
                    <p>상품에 관한 내용은 상품상세 화면에 자세히 안내되어 있습니다. 마이페이지 > 주문내역에서 주문한 상품을 선택하면 상세페이지로 이동합니다.</p>
                    <p>상품 상세 내용에 표시되어 있지 않은 내용은 판매자에게 문의해 주십시오.</p>
                    <p>> 판매자에게 문의</p>
                    <p>1. "마이페이지 > 주문내역에서 상품 선택 > 배송/교환/반품 안내"에 표기된 판매자 연락처로 문의</p>
                    <p>2. "["마이페이지 > 1:1문의하기 > 문읜타입에서 판매자에게 문의하기"를 선택한 후 질의 내용 작성</p>
                </div>
            </li>
        </ul>
       </div>
</body>
</html>