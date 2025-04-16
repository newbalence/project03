<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		<link rel="stylesheet" href="./css/header.css"></link>
	</head>
	<body>
		<div class="header">
		<div class="tab">
			<div class="icon">
				<img src="./img/hamburger.jpg" style="width: 20%">
			</div>
		<div class="kind">
			<a onclick="location.href='burger.jsp'">burger</a>
			<a onclick="location.href='side.jsp'">side</a>
			<a onclick="location.href='drink.jsp'">drink</a>
			<a onclick="location.href='dessert.jsp'">dessert</a>
			<a onclick="location.href='etc.jsp'">etc</a>				
		</div>
		<div class="Btn">
			<button class="btn">마이페이지</button>
			<button class="btn">로그인</button>
			<button class="btn">장바구니</button>
		</div>
		</div>
		</div>
		<!-- <div class="menu">
			<img src="./img/menu.jpg" style="width:100%">
			<a onclick="location.href='menu.jsp'">M E N U</a>
		</div> -->
	</body>
</html>