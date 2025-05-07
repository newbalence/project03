<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>side menu</title>
		<link rel="stylesheet" href="../css/side.css"></link>
	</head>
	<body>
		<%@ include file="../header.jsp" %>
		<div class="main_content">
			<div class="side">side</div>
			<div class="sideMenu">
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/french.png" class="sidePhoto"><br>French Fries</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/cheeseFrench.png" class="sidePhoto"><br>cheeseFrench Fries</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/secret_sauce.png" class="sidePhoto"><br>secret French Fries</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/hashbrown.png" class="sidePhoto"><br>Hash Brown</a>
				</div>
			</div>
			<div class="sideMenu">
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/Coleslaw.png" class="sidePhoto"><br>Coleslaw</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/wrap.png" class="sidePhoto"><br>Chicken Snack Wrap</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/neget.png" class="sidePhoto"><br>McNuggets</a>
				</div>
				<div class="side_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="../img/side/stic.png" class="sidePhoto"><br>Cheese Sticks</a>
				</div>
			</div>
		</div>
	</body>
</html>