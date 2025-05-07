<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인화면</title>
		<link rel="stylesheet" href="../css/main.css"></link>
	</head>
	<body style="background: url(../img/main.jpg) no-repeat center top fixed;" >
		<div class="Main">
			<div class="hand">HandCrafted</div>
			<div class="make">Burgers & Fries</div>
		</div>
		<a class="Menu" onclick="location.href='<%=path %>/menu/menu.jsp'">메뉴보기</a>
	</body>
</html>