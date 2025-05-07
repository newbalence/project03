<%@page import="etc.etcDAO"%>
<%@page import="dessert.dessertDAO"%>
<%@page import="drink.drinkDAO"%>
<%@page import="side.sideDAO"%>
<%@page import="burger.burgerDAO"%>
<%@page import="etc.etcVO"%>
<%@page import="dessert.dessertVO"%>
<%@page import="drink.drinkVO"%>
<%@page import="side.sideVO"%>
<%@page import="options.optionsVO"%>
<%@page import="burger.burgerVO"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String savePath = request.getServletContext().getRealPath("/menu");
	savePath = savePath.replace("\\", "\\\\");
	
	int maxFileSize = 1024 * 1024 * 10;
	
	File saveDir = new File(savePath);
	if(!saveDir.exists()){	//upload 폴더가 없으면
		saveDir.mkdirs();	//폴더를 생성한다.
	}
	
	MultipartRequest multi = new MultipartRequest(
		request,		//요청 객체
		savePath,		//저장 경로
		maxFileSize,	//파일 크기
		"utf-8",		//인코딩
		new DefaultFileRenamePolicy()
	);
	
	String type = multi.getParameter("add");
	String food = multi.getParameter("food");
	String pay = multi.getParameter("pay");
	
	if(type == null || food == null || pay == null){
		response.sendRedirect("management.jsp");
		return;
	}
	
	if(type.isEmpty() || food.isEmpty() || pay.isEmpty()){
		response.sendRedirect("management.jsp");
		return;
	}
	
	
	String fileName = "";
	String name = "";
	Enumeration files = multi.getFileNames();
	if(files.hasMoreElements()){
		name = (String)files.nextElement();
		//write.jsp의 input file태그의 name 속성의 값들
		
		fileName = multi.getFilesystemName(name);
		//업로드된 파일 이름
	}

	if(type.equals("burger")){
		burgerDAO dao = new burgerDAO();
		
		burgerVO vo = new burgerVO();
		vo.setBurgerName(food);
		vo.setBurgerPay(pay);
		vo.setBurgerImgName(fileName);
		vo.setBurgerImgLocation(savePath);
		
		dao.insBurger(vo);
		response.sendRedirect("menu/burger.jsp");
	}else if(type.equals("side")){
		sideDAO dao = new sideDAO();
		
		sideVO vo = new sideVO();
		vo.setSideName(food);
		vo.setSidePay(pay);
		vo.setSideImgName(fileName);
		vo.setSideImgLocation(savePath);
		
		dao.insSide(vo);
		response.sendRedirect("menu/side.jsp");
	}else if(type.equals("drink")){
		drinkDAO dao = new drinkDAO();
		
		drinkVO vo = new drinkVO();
		vo.setDrinkName(food);
		vo.setDrinkPay(pay);
		vo.setDrinkImgName(fileName);
		vo.setDrinkImgLocation(savePath);
		
		dao.insDrink(vo);
		response.sendRedirect("menu/drink.jsp");
	}else if(type.equals("dessert")){
		dessertDAO dao = new dessertDAO();
		
		dessertVO vo = new dessertVO();
		vo.setDessertName(food);
		vo.setDessertPay(pay);
		vo.setDessertImgName(fileName);
		vo.setDessertImgLocation(savePath);
		
		dao.insDessert(vo);
		response.sendRedirect("menu/dessert.jsp");
	}else if(type.equals("etc")){
		etcDAO dao = new etcDAO();
		
		etcVO vo = new etcVO();
		vo.setEtcName(food);
		vo.setEtcPay(pay);
		vo.setEtcImgName(fileName);
		vo.setEtcImgLocation(savePath);
		
		dao.insEtc(vo);
		response.sendRedirect("menu/etc.jsp");
	}
	
	
%>