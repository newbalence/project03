<%@page import="drink.drinkVO"%>
<%@page import="java.util.List"%>
<%@page import="drink.drinkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%
drinkDAO dao = new drinkDAO();
List<drinkVO> list = dao.selDrinkAll();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>drink menu</title>
		<link rel="stylesheet" href="../css/drink.css"></link>
	</head>
	<body>
		<div class="main_content">
			<div class="drink">drink</div>
			<div class="drinkMenu">
			<%
				for(int i = 0; i < list.size(); i++){
					drinkVO vo = list.get(i);
					%>
					<div class="drink_list">
						<a onclick="location.href='<%=path%>/details.jsp'" class="name">
							<img src="../img/drink/coca.png" class="drinkPhoto"><br><%= vo.getDrinkName() %></a>
					</div>
					<%
				}
			%>
			</div>
		</div>
	</body>
</html>