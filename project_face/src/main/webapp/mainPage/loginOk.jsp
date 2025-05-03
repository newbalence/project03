<%@page import="user.userVO"%>
<%@page import="user.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	String phone = request.getParameter("phone");
	
	if(phone == null){
		response.sendRedirect("login.jsp");
		return;
	}
	if(phone.isEmpty()){
		response.sendRedirect("login.jsp");
		return;
	}
	
	userDAO dao = new userDAO();
	userVO user = dao.login(phone);
	if(user != null){
		session.setAttribute("user", user);
		
		response.sendRedirect("main.jsp");
		return;
	}
	response.sendRedirect("login.jsp");
%>
