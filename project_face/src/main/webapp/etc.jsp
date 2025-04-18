<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>etc menu</title>
		<link rel="stylesheet" href="./css/etc.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="main_content">
			<div class="etc">etc</div>
			<div class="etctMenu">
				<div class="etc_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/etc/berryshake.png" class="etcPhoto"><br>STR Shake</a>
				</div>
				<div class="etc_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/etc/choco_shake.png" class="etcPhoto"><br>Choco Shake</a>
				</div>
				<div class="etc_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/etc/coffee_shake.png" class="etcPhoto"><br>Coffee Shake</a>
				</div>
			</div>
			<div class="etctMenu">
				<div class="etc_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/etc/coffee.png" class="etcPhoto"><br>(Hot/Ice)Americano</a>
				</div>
				<div class="etc_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/etc/late.png" class="etcPhoto"><br>(Hot/Ice)Cafe Late</a>
				</div>
				<!-- <div class="etc_list">
					<a onclick="location.href='details.jsp'" class="name">
						<img src="./img/etc/milktea.png" class="etcPhoto"><br>(Hot/Ice)Milk Tea</a>
				</div> -->
			</div>
			</div>
		</div>
	</body>
</html>