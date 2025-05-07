<%@page import="user.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String phone = request.getParameter("num");

if(phone.isEmpty() || phone == null){
	out.print("1");
	return;
}

phone = phone.replaceAll("[^0-9]", "");

userDAO dao = new userDAO();
int check = dao.phoneCheck(phone);
out.print(check);


%>