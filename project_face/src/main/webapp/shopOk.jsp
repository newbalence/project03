<%@page import="shoppingList.shoppingListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String phone = request.getParameter("phone");

if(phone.isEmpty() || phone == null){
	response.sendRedirect("mainPage/main.jsp");
	return;
}

shoppingListDAO dao = new shoppingListDAO();
dao.insShopListOne(phone);


%>