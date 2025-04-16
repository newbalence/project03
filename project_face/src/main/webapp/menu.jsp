<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MENU</title>
		<link rel="stylesheet" href="./css/menu.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="menu">
			<img src="./img/menu.jpg" style="width:100%">
			<a class="Menu">M E N U</a>
		</div>
		<div class="intro">
			<p><i><del>내 일 먹 을 걸 생 각 하 는 놈 은</del></i>
			<br>
			 <i><del><big>오 늘 만 먹 는 놈 에 게 죽 는 다.<big></big></del></i></p>
		</div>
		<div class="menuRow">
			<div class="menu_list"><img src="./img/burger.jpg" class="menuPhoto">
				<a class="name">BUTGERS</a>
			</div>
			<div class="menu_list"><img src="./img/side.jpg" class="menuPhoto">
				<a class="name">SIDE</a>
			</div>
			<div class="menu_list"><img src="./img/drink.jpg" class="menuPhoto">
				<a class="name">DRINK</a>
			</div>
		</div>
		<div class="menuRow">
			<div class="menu_list"><img src="./img/dessert.PNG" class="menuPhoto">
				<a class="name">DESSERT</a>
			</div>
			<div class="menu_list"><img src="./img/etc.jpg" class="menuPhoto">
				<a class="name">ETC</a>
			</div>
		</div>
		</body>
</html>