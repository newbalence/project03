<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>side menu</title>
		<link rel="stylesheet" href="./css/side.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="main_content">
			<div class="side">side</div>
			<div class="sideMenu">
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/french.jpg" class="sidePhoto"><br>French Fries</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/cheeseFrench.jpg" class="sidePhoto"><br>cheeseFrench Fries</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/secret sauce.PNG" class="sidePhoto"><br>secret French Fries</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/hashbrown.jpg" class="sidePhoto"><br>Hash Brown</a>
				</div>
			</div>
			<div class="sideMenu">
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/Coleslaw.PNG" class="sidePhoto"><br>Coleslaw</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/wrap.jpg" class="sidePhoto"><br>Chicken Snack Wrap</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/neget.PNG" class="sidePhoto"><br>McNuggets</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/stic.PNG" class="sidePhoto"><br>Cheese Sticks</a>
				</div>
			</div>
		</div>
	</body>
</html>