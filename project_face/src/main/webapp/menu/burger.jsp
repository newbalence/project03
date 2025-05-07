<%@page import="burger.burgerVO"%>
<%@page import="java.util.List"%>
<%@page import="burger.burgerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%
burgerDAO dao = new burgerDAO();
List<burgerVO> list = dao.selBurgerAll();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>burger menu</title>
		<link rel="stylesheet" href="../css/burger.css"></link>
	</head>
	<body>

		<div class="main_content">
			<div class="burger">burger</div>
			<%-- <div class="listrow">
				<h2 class="goods">추천상품</h2>
			</div>
			<div class="listrow">
				<div class="listbox">
					<div class="list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/burger/gibon.png" class="photo"><br>클래식 버거</a>
					</div>
					<div class="list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/burger/bulgogi.png" class="photo"><br>불고기 버거</a>
					</div>
					<div class="list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/burger/cheese.png" class="photo"><br>치즈 버거</a>
					</div>
				</div>
				<div class="listbox">
					<div class="list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/burger/chiken.png" class="photo"><br>치킨 버거</a>
					</div>
					<div class="list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/burger/bacon.png" class="photo"><br>베이컨 버거</a>
					</div>
					<div class="list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/burger/shrimp.png" class="photo"><br>새우버거</a>
					</div>
				</div>
			</div> --%>
			<div class="listrow">
				<h2 class="goods">일반상품</h2>
			</div>
			<div class="listrow">
				<div class="listbox">
					<%
						for(int i = 0; i < list.size(); i++){
							burgerVO vo = list.get(i);
							%>
							<div class="list">
								<a onclick="location.href='<%=path%>/details.jsp?type=burger&no=<%=vo.getBurgerNum() %>'" class="name">
									<img src="<%=request.getContextPath()%>/menu/<%= vo.getBurgerImgName() %>" class="photo"><br><%= vo.getBurgerName() %></a>
							</div>
							
							<%
						}
					%>
				</div>
			</div>
			<a>&lt;&lt;</a>
			<a>&lt;</a>
			<a>&gt;</a>
			<a>&gt;&gt;</a>
		</div>
	</body>
</html>