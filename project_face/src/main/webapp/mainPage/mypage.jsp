<%@page import="options.optionsVO"%>
<%@page import="optionList.optionListDAO"%>
<%@page import="order.orderVO"%>
<%@page import="java.util.List"%>
<%@page import="order.orderDAO"%>
<%@page import="point.pointVO"%>
<%@page import="point.pointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%

if(user == null){
	response.sendRedirect("../mainPage/main.jsp");
	return;
}

pointDAO dao = new pointDAO();
pointVO vo = dao.SelPointOne(user.getPhone());

orderDAO orderDAO = new orderDAO();
List<orderVO> list = orderDAO.selectAllOrders(user.getPhone());

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="../css/mypage.css"></link>
	</head>
	<body>
		<div class="mypage">
			<div class="photo">
				<div class="photo_face">
					<div class="facePhoto">
						<!-- <a>사진</a> -->
					</div>
					<div class="facerow">
						<a class="Info">회원 이름 : <%= user.getName() %></a><br>
						<a class="Info">포인트 : <%= vo.getPoint() %></a>
					</div>
				</div>
			</div>
		</div>
		<div class="info">
			<div class="infoMember">
				<a class="Info">회원정보</a>
			</div>
			<div class="memberInfo">
				<a class="Info">고객명 : <%= user.getName() %></a><br>
				<br>
				<a class="Info">연락처 : <%= user.getPhone() %></a><br>
				<br>
				<a class="Info">닉네임 : <%= user.getNick() %></a><br>
				<br>
				<a class="Info">생년월일 : <%= user.getBirth() %></a>
				<br>
			</div>
			<div class="infoTwo">
				<div class="Info">최근 주문 제품</div>
			</div>
			<table>
				<tr>
					<td>주문번호</td>
					<td>주문상품</td>
					<td>주문금액</td>
					<td>주문개수</td>
				</tr>
				<%
				for (int i = 0; i < list.size(); i++){
					String name = "";
					String option = "";
					if(list.get(i).getBurgerName() != null){
						name = list.get(i).getBurgerName();
						
						if(list.get(i).getOptionsNum() != 0){
							optionListDAO optionDAO = new optionListDAO();
							List<optionsVO> optionList = optionDAO.selOptionList(list.get(i).getOptionsNum());
							System.out.println(optionList);
							for(int j = 0; j < optionList.size(); j ++){
								if(optionList.get(j).getOptionType() == 1){
									option += optionList.get(j).getAddToppingName() + " 추가 "; 
								}else{
									option += optionList.get(j).getDelToppingName() + " 제외 "; 
								}
							}
						}
					}
					else if(list.get(i).getDrinkName() != null){
						name += list.get(i).getDrinkName();
					}
					else if(list.get(i).getSideName() != null){
						name += list.get(i).getSideName();
					}
					else if(list.get(i).getDessertName() != null){
						name += list.get(i).getDessertName();
					}
					else if(list.get(i).getEtcName() != null){
						name += list.get(i).getEtcName();
					}
					
					if(!option.isEmpty()){
						name = name += "(" + option + ")";
					}
					%>
						<tr>
							<td><%= list.get(i).getOrderListNo() %></td>
							<td><%= name %></td>
							<td><%= list.get(i).getAllPay() %></td>
							<td><%= list.get(i).getQuantity() %></td>
						</tr>
					<%
				}
				%>
			</table>
		</div>
	</body>
</html>