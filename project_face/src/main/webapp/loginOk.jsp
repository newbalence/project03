<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	String num = request.getParameter("phone");
	String video = request.getParameter("cameraon");
	
	if(num == null || video == null){
		response.sendRedirect("login.jsp");
		return;
	}
	if(num.isEmpty() || video.isEmpty()){
		response.sendRedirect("login.jsp");
		return;
	}
	
%>
