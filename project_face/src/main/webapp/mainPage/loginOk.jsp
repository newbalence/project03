<%@page import="user.userVO"%>
<%@page import="user.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	String phone = request.getParameter("phone");
	
	if(phone == null || phone.isEmpty()){
		response.sendRedirect("login.jsp");
		return;
	}
	
	phone = phone.replaceAll("[^0-9]", "");
	
	userDAO dao = new userDAO();
	userVO user = dao.login(phone);
	if(user == null){
		response.sendRedirect("login.jsp");
		return;
	}
	session.setAttribute("user", user);
	
	response.sendRedirect("main.jsp");
%>
