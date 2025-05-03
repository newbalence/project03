<%@page import="user.userVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	userVO user = (userVO)session.getAttribute("user");
	System.out.println(user);
	
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		<link rel="stylesheet" href="<%=path %>/css/header.css"></link>
		<script src="<%= path %>/js/jquery-3.7.1.js"></script>
	</head>
	<body>
		<div class="header">
		<div class="tab">
			<div class="icon">
				<a onclick="location.href='<%=path %>/mainPage/main.jsp'"><img src="<%=path %>/img/hamburger.jpg" style="width: 20%" class="burgerIcon"></a>
				<div class="yummy">
				<a onclick="location.href='<%=path %>/mainPage/main.jsp'"> Yummy Yummy</a>
				</div>
			</div>
		<div class="kind">
			<a onclick="location.href='<%=path %>/burger.jsp'">burger</a>
			<a onclick="location.href='<%=path %>/side.jsp'">side</a>
			<a onclick="location.href='<%=path %>/drink.jsp'">drink</a>
			<a onclick="location.href='<%=path %>/dessert.jsp'">dessert</a>
			<a onclick="location.href='<%=path %>/etc.jsp'">etc</a>				
		</div>
		<div class="Btn">
			<%
				if(user != null){
					if(user.getUserType() == 1){
						%>
							<a class="loginNick"><%= user.getNick() %>님 환영합니다.</a>
							<a onclick="location.href='<%=path %>/mainPage/mypage.jsp'" class="btn">마이페이지</a>
							<a onclick="location.href='<%=path %>/mainPage/logout.jsp'" class="btn">로그아웃</a>
							<a onclick="location.href='<%=path %>/shop.jsp'" class="btn">장바구니</a>
						<%
					}else{
						%>
							<a class="loginNick"><%= user.getNick() %>님 환영합니다.</a>
							<a onclick="location.href='<%=path %>/management.jsp'" class="btn">회원관리</a>
							<a onclick="location.href='<%=path %>/mainPage/logout.jsp'" class="btn">로그아웃</a>
							<a onclick="location.href='<%=path %>/shop.jsp'" class="btn">장바구니</a>
						<%
					}
				%>
					
				<%
				}else{
				%>
					<a onclick="location.href='<%=path %>/mainPage/login.jsp'" class="btn">로그인</a>
				<%
				}
			%>
			
		</div>
		</div>
		</div>
		<!-- <div class="menu">
			<img src="./img/menu.jpg" style="width:100%">
			<a onclick="location.href='menu.jsp'">M E N U</a>
		</div> -->
	</body>
</html>