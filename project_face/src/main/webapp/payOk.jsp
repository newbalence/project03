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
		<div class="howToPay">
			<div class="hum">
				<a>결제가 완료 되었습니다.</a><br>
				<!-- <a>사용전이라 어떻게 뜨는걸까나?!</a><br> -->
			</div>
			<div class="amount">총 결제 예상 금액 : </div>
		</div>
			<div class="paydone">결제하기</div>
	</body>
</html>