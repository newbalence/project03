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
String drinkNo = request.getParameter("drinkNo");
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

optionsVO addToppingVo = new optionsVO();
optionsVO addSauceVo = new optionsVO();
optionsVO delToppingVo = new optionsVO();
optionsVO delSauceVo = new optionsVO();
optionsVO drinkVo = new optionsVO();


optionsDAO optionDao = new optionsDAO();

if(addToppingNo != null){
	addToppingVo.setOptionListNo(optionListNo);
	addToppingVo.setAddToppingNo(addToppingNo);
	addToppingVo.setOptionType(1);
	optionDao.insOption(addToppingVo);
}
if(addSauceNo != null){
	addSauceVo.setOptionListNo(optionListNo);
	addSauceVo.setAddToppingNo(addSauceNo);
	addSauceVo.setOptionType(1);
	optionDao.insOption(addSauceVo);
}
if(delToppingNo != null){
	delToppingVo.setOptionListNo(optionListNo);
	delToppingVo.setDelToppingNo(delToppingNo);
	delToppingVo.setOptionType(2);
	optionDao.insOption(delToppingVo);
}
if(delSauceNo != null){
	delSauceVo.setOptionListNo(optionListNo);
	delSauceVo.setDelToppingNo(delSauceNo);
	delSauceVo.setOptionType(2);
	optionDao.insOption(delSauceVo);
}if(drinkNo != null){
	drinkVo.setOptionListNo(optionListNo);
	drinkVo.setDelToppingNo(drinkNo);
	drinkVo.setOptionType(3);
	optionDao.insOption(drinkVo);
}

shoppingListDAO dao = new shoppingListDAO();

String num = dao.insShopListOne(phone);
shoppingDAO shopDao = new shoppingDAO();

shopVO.setShoppingListNo(Integer.parseInt(num));
shopVO.setOptionsNum(optionListNo);
shopVO.setAllPay(pay);

shopDao.insShopping(shopVO);

response.sendRedirect("shop.jsp");

%>