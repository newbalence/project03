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
			<form active="addOk.jsp" method="post">
			<div class="productDetail">
				<img src="./img/gibon.jpg" class="photo">
				<div class="select">
					<div class="selectCell">
						<select class="selectBar" name="add">
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
						<div class="add_food"><a class="food">음식명 : </a> <input type="text" class="option" name="food" placeholder="음식명 : "></div>
						<div class="add_pay"><a class="food">가 격 : </a><input type="text" class="option" name="pay" placeholder="가격 : "></div>
					</div>
				</div>
			</div>
			<div class="add">
				<button class="add_">추가하기</button>
			</div>
			</form>
	</div>
	</body>
</html>