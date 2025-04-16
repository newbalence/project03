<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String phone = request.getParameter("phone");
String nick = request.getParameter("nick");
String birth = request.getParameter("birth");

if(name == null || phone == null || nick == null || birth == null){
	response.sendRedirect("signup.jsp");
}

if(name.isEmpty() || phone.isEmpty() || nick.isEmpty() || birth.isEmpty()){
	response.sendRedirect("signup.jsp");
}


%>