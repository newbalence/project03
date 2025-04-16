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
				<div class="side_list"><img src="./img/french.jpg" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">French Fries</a>
				</div>
				<div class="side_list"><img src="./img/cheeseFrench.jpg" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">cheeseFrench Fries</a>
				</div>
				<div class="side_list"><img src="./img/secret sauce.PNG" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">secret French Fries</a>
				</div>
				<div class="side_list"><img src="./img/hashbrown.jpg" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">Hash Brown</a>
				</div>
			</div>
			<div class="sideMenu">
				<div class="side_list"><img src="./img/Coleslaw.PNG" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">Coleslaw</a>
				</div>
				<div class="side_list"><img src="./img/wrap.jpg" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">Chicken Snack Wrap</a>
				</div>
				<div class="side_list"><img src="./img/neget.PNG" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">McNuggets</a>
				</div>
				<div class="side_list"><img src="./img/stic.PNG" class="sidePhoto">
					<a onclick="location.href='details.jsp'" class="name">Cheese Sticks</a>
				</div>
			</div>
		</div>
	</body>
</html>