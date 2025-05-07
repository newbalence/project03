<%@page import="dessert.dessertVO"%>
<%@page import="java.util.List"%>
<%@page import="dessert.dessertDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%
dessertDAO dao = new dessertDAO();
List<dessertVO> list = dao.selDessertAll();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>dessert menu</title>
		<link rel="stylesheet" href="../css/dessert.css"></link>
	</head>
	<body>
		<div class="main_content">
			<div class="dessert">dessert</div>
			<div class="dessertMenu">
				<%
					for(int i = 0; i < list.size(); i++){
						dessertVO vo = list.get(i);
						%>
						<div class="dessert_list">
							<a onclick="location.href='<%=path%>/details.jsp?type=dessert&no=<%= vo.getDessertNum() %>'" class="name">
								<img src="<%=request.getContextPath()%>/menu/<%= vo.getDessertImgName() %>" class="dessertPhoto"><br><%= vo.getDessertName() %></a>
						</div>	
						<%
					}
				%>
				
			</div>
		</div>
	</body>
</html>