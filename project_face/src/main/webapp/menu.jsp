<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴화면</title>
		<link rel="stylesheet" href="./css/menu.css"></link>
		</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="main_content">
			<div class="burger">burger</div>
			<!-- <div class="recommend">
				<h2 class="goods">추천상품</h2>
			</div> -->
			<div class="listrow">
				<h2 class="goods">추천상품</h2>
			</div>
			<div class="listrow">
				<div class="listbox">
					<div class="list"><img src="./img/gibon.jpg" class="photo">
						<a class="name">클래식 버거</a>
					</div>
					<div class="list"><img src="./img/bulgogi.jpg" class="photo">
						<a class="name">불고기 버거</a>
					</div>
					<div class="list"><img src="./img/cheese.jpg" class="photo">
						<a class="name">치즈 버거</a>
					</div>
				</div>
				<div class="listbox">
					<div class="list"><img src="./img/chiken.jpg" class="photo">
						<a class="name">치킨 버거</a>
					</div>
					<div class="list"><img src="./img/bacon.jpg" class="photo">
						<a class="name">베이컨 버거</a>
					</div>
					<div class="list"><img src="./img/shrimp.jpg" class="photo">
						<a class="name">새우버거</a>
					</div>
				</div>
			</div>
			<div class="listrow">
				<h2 class="goods">일반상품</h2>
			</div>
			<div class="listrow">
				<div class="listbox">
					<div class="list"><img src="./img/gibon.jpg" class="photo">
						<a class="name">클래식 버거</a>
					</div>
					<div class="list"><img src="./img/bulgogi.jpg" class="photo">
						<a class="name">불고기 버거</a>
					</div>
					<div class="list"><img src="./img/cheese.jpg" class="photo">
						<a class="name">치즈 버거</a>
					</div>
				</div>
				<div class="listbox">
					<div class="list"><img src="./img/chiken.jpg" class="photo">
						<a class="name">치킨 버거</a>
					</div>
					<div class="list"><img src="./img/bacon.jpg" class="photo">
						<a class="name">베이컨 버거</a>
					</div>
					<div class="list"><img src="./img/shrimp.jpg" class="photo">
						<a class="name">새우버거</a>
					</div>
				</div>
			</div>
			<div class="listrow">
				<h2 class="goods">Kids</h2>
			</div>
			<div class="kids">
				<div class="kidsPhoto"><img src="./img/kid.PNG" class="photo"></div>
				<div class="kidsPhoto"><img src="./img/kids.PNG" class="photo"></div>
			</div>
			<!-- <div class="listrow">
				<h2 class="goods">최근본 상품</h2>
				<div class="list"><img src="./img/gibon.jpg" class="photo">
					<a class="name">클래식 버거</a>
				</div>
				<div class="list"><img src="./img/bulgogi.jpg" class="photo">
					<a class="name">불고기 버거</a>
				</div>
				<div class="list"><img src="./img/chiken.jpg" class="photo">
					<a class="name">치킨 버거</a>
				</div>
			</div> -->
			<a>&lt;&lt;</a>
			<a>&lt;</a>
			<a>&gt;</a>
			<a>&gt;&gt;</a>
		</div>
	</body>
</html>