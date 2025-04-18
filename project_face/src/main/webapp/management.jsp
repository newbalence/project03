<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자 화면</title>
		<link rel="stylesheet" href="./css/management.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="product">
		<div class="manage">관리자 메뉴</div>
			<div class="productDetail">
				<img src="./img/gibon.jpg" class="photo">
			
			<div class="select">
				<div class="selectCell">
					<select class="selectBar">
						<option>햄버거 추가</option>
						<option>옵션 추가</option>
						<option>사이드 추가</option>
						<option>음료 추가</option>
						<option>디저트 추가</option>
						<option>etc 추가</option>
					</select>
					<!-- <select class="selectBar">
						<option>소스추가</option>
						<option>BBQ 소스+500</option>
					</select>
					<select class="selectBar">
						<option>토핑빼기</option>
						<option>토마토</option>
					</select>
					<select class="selectBar">
						<option>음료옵션</option>
						<option>ICE</option>
					</select> -->
					<img src="./img/smilePlus.png" class="smilephoto">
					음식명 : <input type="text"> 
					가 격 : <input type="text">
					</div>
				</div>
			</div>
		</div>
	<div class="buy">
		<a onclick="location.href='payment.jsp'">구매하기</a>
	</div>
	<div class="decide">
		<div class="decision"><a onclick="location.href='shop.jsp'">장바구니</a></div>
		<div class="decision"><a >취 소 </a></div>
	</div>
	</body>
</html>