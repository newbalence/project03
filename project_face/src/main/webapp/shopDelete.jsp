<%@page import="shopping.shoppingDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] items = request.getParameterValues("items[]");
	shoppingDAO dao = new shoppingDAO();
	dao.delShopping(items);
	
	out.print("success");
%>