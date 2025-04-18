<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>drink menu</title>
		<link rel="stylesheet" href="./css/drink.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="main_content">
			<div class="drink">drink</div>
			<div class="drinkMenu">
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/coca.jpg" class="drinkPhoto"><br>Coca-Cola</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/cocazero.jpg" class="drinkPhoto"><br>Coca-Cola Zero</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/cider.jpg" class="drinkPhoto"><br>Cider</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/sprite.jpg" class="drinkPhoto"><br>Sprite</a>
				</div>
			</div>
			<div class="drinkMenu">
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/pepsi.jpg" class="drinkPhoto"><br>Pepsi</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/pepsizero.jpg" class="drinkPhoto"><br>Pepsi Zero</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/pepsimango.jpg" class="drinkPhoto"><br>PepsiMango</a>
				</div>
			</div>
			<div class="drinkMenu">
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/Drpeper.jpg" class="drinkPhoto"><br>Drpeper</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/Drprperzero.jpg" class="drinkPhoto"><br>Drprperzero</a>
				</div>
			</div>
		</div>
	</body>
</html>