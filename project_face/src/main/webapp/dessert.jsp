<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>dessert menu</title>
		<link rel="stylesheet" href="./css/dessert.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="main_content">
			<div class="dessert">dessert</div>
			<div class="dessertMenu">
				<div class="dessert_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/dessert/churros.png" class="dessertPhoto"><br>Choco Churros</a>
				</div>
				<div class="dessert_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/dessert/softice.png" class="dessertPhoto"><br>Soft Ice Cream</a>
				</div>
				<div class="dessert_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/dessert/Ccake.png" class="dessertPhoto"><br>Cheese Cake</a>
				</div>
			</div>
			<div class="dessertMenu">
				<div class="dessert_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/dessert/Scake.png" class="dessertPhoto"><br>STR cake</a>
				</div>
				<div class="dessert_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/dessert/Tcake.png" class="dessertPhoto"><br>Tiramisu</a>
				</div>
				<div class="dessert_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/dessert/Ocake.png" class="dessertPhoto"><br>Orange Cake</a>
				</div>
			</div>
		</div>
	</body>
</html>