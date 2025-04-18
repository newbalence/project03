<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>결재하기</title>
		<link rel="stylesheet" href="./css/payment.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="payment">
			<a>결제 예정 금액</a>
		</div>
		<div>
		<div class="point">
			<a>보유 포인트 : 1000 P</a>
			<a class="Point_">적립예정 포인트 : 500 P</a>
		</div>
		<table>
			<tr>
				<td>상품명</td>
				<td>금액</td>
				<td>
					<select class="pointCell">
						<option class="pointBar">할인선택</option>
						<option class="pointBar">쿠폰할인</option>
						<option class="pointBar">포 인 트</option>
					</select>
				</td>
				<td>수량</td>
				<td>결제 예정 금액</td>
			</tr>
			<%
				for (int i = 0; i < 3; i++){
				%>
				<tr>
					<td>클래식 버거</td>
					<td>10,000</td>
					<td>2,000</td>
					<td>1</td>
					<td>8,000</td>
				</tr>	
				<%
					}
				%>
		</table>
		</div>
		<div class="payWay">
			<a>결제 수단</a>
		</div>
		<div class="howToPay">
			<div class="payKind">
				<div class="cacaoPay">카카오페이</div>
				<div class="cacaoPay">네이버페이</div>
				<div class="cacaoPay">신용카드</div>
				<div class="cacaoPay">페이코</div>
			</div>
			<div class="hum">
				<a>카카오 페이를 아직....</a><br>
				<a>사용전이라 어떻게 뜨는걸까나?!</a><br>
			</div>
			<div class="amount">총 결재 예상 금액 : </div>
		</div>
			<div class="paydone">결제하기</div>
	</body>
</html>