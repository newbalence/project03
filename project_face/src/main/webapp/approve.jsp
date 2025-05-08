<%@page import="point.pointDAO"%>
<%@page import="point.pointVO"%>
<%@page import="order.orderDAO"%>
<%@page import="orderList.orderListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
String point = request.getParameter("point");
String usePoint = request.getParameter("usePoint");

if(user == null){
	response.sendRedirect("mainPage/main.jsp");
	return;
}
String[] items = (String[])session.getAttribute("order");

if(items == null){
	response.sendRedirect("mainPage/main.jsp");
}

orderListDAO orderListDAO = new orderListDAO();
int result = orderListDAO.insOrderList(user.getPhone());


orderDAO orderDAO = new orderDAO();
for(String item :items){
	orderDAO.insOrder(result, Integer.parseInt(item));	
}

pointVO pointVo = new pointVO();
pointVo.setPhone(user.getPhone());
pointVo.setPoint(Integer.parseInt(point) - Integer.parseInt(usePoint));

pointDAO pointDao = new pointDAO();
pointDao.insPoint(pointVo);

session.removeAttribute("order");

response.sendRedirect("mainPage/mypage.jsp");

%>