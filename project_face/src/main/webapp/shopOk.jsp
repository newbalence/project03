<%@page import="optionList.optionListDAO"%>
<%@page import="options.optionsDAO"%>
<%@page import="options.optionsVO"%>
<%@page import="shopping.shoppingVO"%>
<%@page import="shopping.shoppingDAO"%>
<%@page import="shoppingList.shoppingListVO"%>
<%@page import="java.util.List"%>
<%@page import="shoppingList.shoppingListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String phone = request.getParameter("phone");
String type = request.getParameter("type");
String no = request.getParameter("no");
String addToppingNo = request.getParameter("addToppingNo");
String addSauceNo = request.getParameter("addSauceNo");
String delToppingNo = request.getParameter("delToppingNo");
String delSauceNo = request.getParameter("delSauceNo");
String pay = request.getParameter("pay");

/* phone: 01098653247
type: burger
no: 3
addTopping: 3000
addToppingNo: 3
addSauce: 500
addSauceNo: 9
delTopping: 0
delToppingNo: 2
delSauce: 0
delSauceNo: 11
pay: 11400 */

if(type.isEmpty() || type == null){
	response.sendRedirect("menu/menu.jsp");
	return;
}

if(phone.isEmpty() || no.isEmpty() || pay.isEmpty()){
	response.sendRedirect("menu/" + type + ".jsp");
	return;
}

if(phone == null || no == null || pay == null){
	response.sendRedirect("menu/" + type + ".jsp");
	return;
}

shoppingVO shopVO = new shoppingVO();

if(type.equals("burger")){
	shopVO.setBurgerNum(Integer.parseInt(no));
}else if(type.equals("dessert")){
	shopVO.setDessertNum(Integer.parseInt(no));
}else if(type.equals("drink")){
	shopVO.setDrinkNum(Integer.parseInt(no));
}else if(type.equals("etc")){
	shopVO.setEtcNum(Integer.parseInt(no));
}else if(type.equals("side")){
	shopVO.setSideNum(Integer.parseInt(no));
}else{
	response.sendRedirect("menu/" + type + ".jsp");
	return;
}

optionListDAO optionListDAO = new optionListDAO();
String opLiNum = optionListDAO.insOptionListOne(phone);
optionsVO optionsVo = new optionsVO();
int optionListNo = Integer.parseInt(opLiNum);
if(addToppingNo != null || addSauceNo != null || delToppingNo != null || delSauceNo != null){
	optionsDAO dao = new optionsDAO();
	optionsVo.setOptionListNo(optionListNo);
	optionsVo.setAddToppingNo(Integer.parseInt(addToppingNo));
	optionsVo.setDelToppingNo(Integer.parseInt(delToppingNo));
	dao.insOption(optionsVo);

	optionsVo.setAddToppingNo(Integer.parseInt(addSauceNo));
	optionsVo.setDelToppingNo(Integer.parseInt(delSauceNo));
	dao.insOption(optionsVo);
	
	
}

shoppingListDAO dao = new shoppingListDAO();

String num = dao.insShopListOne(phone);
shoppingDAO shopDao = new shoppingDAO();

shopVO.setShoppingListNo(Integer.parseInt(num));


shopDao.insShopping(shopVO);



%>