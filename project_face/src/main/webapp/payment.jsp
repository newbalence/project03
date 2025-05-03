<%@page import="point.pointVO"%>
<%@page import="point.pointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
pointDAO dao = new pointDAO();
pointVO vo = dao.SelPointOne(user.getPhone());

%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>결재하기</title>
		<link rel="stylesheet" href="./css/payment.css"></link>
	</head>
	<body>
		<div class="payment">
			<a>결제 예정 금액</a>
		</div>
		<div>
		<div class="point">
			<a>보유 포인트 : <%= vo.getPoint() %> P</a>
			<a class="Point_">적립예정 포인트 : 500 P</a>
		</div>
		<table>
			<tr>
				<td id="name">상품명</td>
				<td id="mony">금액</td>
				<td id="usePoint">포인트</td>
				<td id="count">수량</td>
				<td id="allMony">결제 예정 금액</td>
			</tr>
			<%
				for (int i = 0; i < 3; i++){
				%>
				<tr>
					<td>클래식 버거</td>
					<td>10,000</td>
					<td><input id="payPoint" type="text" placeholder="사용할 포인트를 숫자로 입력하시오"></td>
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
				<div class="kakaoPay">카카오페이</div>
				<div class="kakaoPay">네이버페이</div>
				<div class="kakaoPay">신용카드</div>
				<div class="kakaoPay">페이코</div>
			</div>
			<div class="hum">
				<a>결제 진행중</a>
			</div>
			<div class="amount"><a>총 결제 예상 금액 : </a></div>
		</div>
			<div class="paydone" id="kakao_pay">결제하기</div>
	</body>
	<script>
		// 결제 진행시 결제가 완료 되면 alert나 class='howToPay'부분의 박스를 없애고 
		$("#kakao_pay").click(() => {
			location.href="payOk.jsp"
			//상품이름, 상품 개수, 주문번호, 주문자id, 가격 넘겨주고
			//https://developers.kakaopay.com/docs/payment/online/single-paymentㄴ
		})
	</script>
</html>