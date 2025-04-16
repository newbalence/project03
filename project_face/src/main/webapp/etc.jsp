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
				<div class="etc_list"><img src="./img/berryshake.jpg" class="etcPhoto">
					<a onclick="location.href='details.jsp'" class="name">STR Shake</a>
				</div>
				<div class="etc_list"><img src="./img/choco shake.jpg" class="etcPhoto">
					<a onclick="location.href='details.jsp'" class="name">Choco Shake</a>
				</div>
				<div class="etc_list"><img src="./img/coffee shake.PNG" class="etcPhoto">
					<a onclick="location.href='details.jsp'" class="name">Coffee Shake</a>
				</div>
			</div>
			<div class="etctMenu">
				<div class="etc_list"><img src="./img/coffee.jpg" class="etcPhoto">
					<a onclick="location.href='details.jsp'" class="name">(Hot/Ice)Americano</a>
				</div>
				<div class="etc_list"><img src="./img/late.jpg" class="etcPhoto">
					<a onclick="location.href='details.jsp'" class="name">(Hot/Ice)Cafe Late</a>
				</div>
				<div class="etc_list"><img src="./img/milktea.jpg" class="etcPhoto">
					<a onclick="location.href='details.jsp'" class="name">(Hot/Ice)Milk Tea</a>
				</div>
			</div>
			</div>
		</div>
	</body>
</html>