<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MENU</title>
		<link rel="stylesheet" href="../css/menu.css"></link>
	</head>
	<body>
		<%@ include file="../header.jsp" %>
		<div class="menu">
			<img src="../img/menu.jpg" style="width:100%">
			<a class="Menu">M E N U</a>
		</div>
		<div class="">
			<div class="menuRow">
				<div class="menu_list">
					<a onclick="location.href='<%=path%>/menu/burger.jsp'" class="name">
						<img src="../img/burger.jpg" class="menuPhoto"><br>BURGERS</a>
				</div>
				<div class="menu_list">
					<a onclick="location.href='<%=path%>/menuside.jsp'" class="name">
						<img src="../img/side.jpg" class="menuPhoto"><br>SIDE</a>
				</div>
				<div class="menu_list">
					<a onclick="location.href='<%=path%>/menudrink.jsp'" class="name">
						<img src="../img/drink.jpg" class="menuPhoto"><br>DRINK</a>
				</div>
			</div>
			<div class="menuRow">
				<div class="menu_list">
					<a onclick="location.href='<%=path%>/menudessert.jsp'" class="name">
						<img src="../img/dessert.PNG" class="menuPhoto"><br>DESSERT</a>
				</div>
				<div class="menu_list">
					<a onclick="location.href='<%=path%>/menuetc.jsp'" class="name">
						<img src="../img/etc.jpg" class="menuPhoto"><br>ETC</a>
				</div>
			</div>
			<!-- <div class="list"> 로그인 했을 때 나타냈음 하는?!
				<div>
					<h2 class="goods">최근 본 상품</h2>
				</div>
				<div class="viewlist">
					<div class="viewList"><img src="./img/gibon.jpg" class="burgerP">
						<a class="list_name">클래식 버거</a>
					</div>
					<div class="viewList"><img src="./img/bulgogi.jpg" class="burgerP">
						<a class="list_name">불고기 버거</a>
					</div>
					<div class="viewList"><img src="./img/chiken.jpg" class="burgerP">
						<a class="list_name">치킨 버거</a>
					</div>
				</div>
			</div> -->
		</div>
		</body>
</html>