<%@page import="shoppingList.shoppingListVO"%>
<%@page import="java.util.List"%>
<%@page import="shoppingList.shoppingListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String phone = request.getParameter("phone");
String type = request.getParameter("type");

if(type.isEmpty() || type == null){
	response.sendRedirect("menu/menu.jsp");
	return;
}

if(phone.isEmpty() || phone == null){
	response.sendRedirect("menu/" + type + ".jsp");
	return;
}

shoppingListDAO dao = new shoppingListDAO();

String no = dao.insShopListOne(phone);



%>