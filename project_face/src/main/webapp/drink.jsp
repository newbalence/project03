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
				<div class="drink_list"><img src="./img/coca.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Coca-Cola</a>
				</div>
				<div class="drink_list"><img src="./img/cocazero.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Coca-Cola Zero</a>
				</div>
				<div class="drink_list"><img src="./img/cider.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Cider</a>
				</div>
				<div class="drink_list"><img src="./img/sprite.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Sprite</a>
				</div>
			</div>
			<div class="drinkMenu">
				<div class="drink_list"><img src="./img/pepsi.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Pepsi</a>
				</div>
				<div class="drink_list"><img src="./img/pepsizero.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Pepsi Zero</a>
				</div>
				<div class="drink_list"><img src="./img/pepsimango.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">PepsiMango</a>
				</div>
			</div>
			<div class="drinkMenu">
				<div class="drink_list"><img src="./img/Drpeper.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Drpeper</a>
				</div>
				<div class="drink_list"><img src="./img/Drprperzero.jpg" class="drinkPhoto">
					<a onclick="location.href='details.jsp'" class="name">Drprperzero</a>
				</div>
			</div>
		</div>
	</body>
</html>