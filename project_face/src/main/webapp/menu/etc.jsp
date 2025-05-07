<%@page import="etc.etcVO"%>
<%@page import="java.util.List"%>
<%@page import="etc.etcDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%
etcDAO dao = new etcDAO();
List<etcVO> list = dao.selEtcAll();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>etc menu</title>
		<link rel="stylesheet" href="../css/etc.css"></link>
	</head>
	<body>
		<div class="main_content">
			<div class="etc">etc</div>
			<div class="etctMenu">
				<%
					for(int i = 0; i < list.size(); i++){
						etcVO vo = list.get(i);
						%>
						<div class="etc_list">
							<a onclick="location.href='<%=path%>/details.jsp?type=etc&no=<%= vo.getEtcNum() %>'" class="name">
								<img src="../img/etc/berryshake.png" class="etcPhoto"><br><%= vo.getEtcName() %></a>
						</div>		
						<%
					}
				%>
				
			</div>
		</div>
	</body>
</html>