<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장바구니</title>
		<link rel="stylesheet" href="./css/shop.css"></link>
		</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="shop">
			<h2 class="cart">SHOPPING CART</h2>
		</div>
		<table>
			<tr>
				<td><input type="checkbox"></td>
				<td>상품정보</td>
				<td>수량</td>
				<td>상품구매 금액</td>
				<td>할인 금액</td>
				<td>결재 금액</td>
				<td>선택</td>
			</tr>
			
				<%
				for (int i = 0; i < 3; i++){
				%>
				<tr>
					<td><input type="checkbox"></td>
					<td>클래식 버거</td>
					<td>1</td>
					<td>10,000</td>
					<td>3,000</td>
					<td>7,000</td>
					<td><input type="checkbox">삭제</td>
				</tr>	
				<%
					}
				%>
		</table>
		<div class="shopBtn">
			<a class="btn">장바구니 비우기</a>
			<a class="btn">결제하기</a>
		</div>
	</body>
</html>