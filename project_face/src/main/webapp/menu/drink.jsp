<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>drink menu</title>
		<link rel="stylesheet" href="../css/drink.css"></link>
	</head>
	<body>
		<%@ include file="../header.jsp" %>
		<div class="main_content">
			<div class="drink">drink</div>
			<div class="drinkMenu">
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/coca.png" class="drinkPhoto"><br>Coca-Cola</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/cocazero.png" class="drinkPhoto"><br>Coca-Cola Zero</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/cider.png" class="drinkPhoto"><br>Cider</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/sprite.png" class="drinkPhoto"><br>Sprite</a>
				</div>
			</div>
			<div class="drinkMenu">
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/pepsi.png" class="drinkPhoto"><br>Pepsi</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/pepsizero.png" class="drinkPhoto"><br>Pepsi Zero</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/pepsimango.png" class="drinkPhoto"><br>PepsiMango</a>
				</div>
			</div>
			<div class="drinkMenu">
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/Drpeper.png" class="drinkPhoto"><br>Drpeper</a>
				</div>
				<div class="drink_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/drink/Drprperzero.png" class="drinkPhoto"><br>Drprperzero</a>
				</div>
			</div>
		</div>
	</body>
</html>