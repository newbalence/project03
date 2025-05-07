<%@page import="side.sideVO"%>
<%@page import="java.util.List"%>
<%@page import="side.sideDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
sideDAO dao = new sideDAO();
List<sideVO> list = dao.selSideAll();
%>
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
			<% 
				for(int i = 0; i < list.size(); i++){
					sideVO vo = list.get(i);
					%>
					<div class="side_list">
						<a onclick="location.href='<%=path%>/details.jsp?type=side&no=<%= vo.getSideNum() %>'" class="name">
							<img src="../img/side/french.png" class="sidePhoto"><br><%= vo.getSideName() %></a>
					</div>
					<%
				}
			%>
				
			</div>
		</div>
	</body>
</html>