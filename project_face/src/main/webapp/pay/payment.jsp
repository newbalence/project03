<%@page import="shopping.shoppingVO"%>
<%@page import="java.util.List"%>
<%@page import="shopping.shoppingDAO"%>
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

String[] items = request.getParameterValues("items");
System.out.println(items);
for(String item: items){
	System.out.println(item);
}

shoppingDAO shopDao = new shoppingDAO();
List<shoppingVO> list = shopDao.selShoppingItems(items);

pointDAO dao = new pointDAO();
pointVO vo = dao.SelPointOne(user.getPhone());
int totalPrice = 0;
int totalCount = 0;
String itemName = "";
%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>결재하기</title>
		<link rel="stylesheet" href="../css/payment.css"></link>
	</head>
	<body>
		<div class="payment">
			<a>결제 예정 금액</a>
		</div>
		<div>
		<div class="point">
			<a>보유 포인트 : <%= vo.getPoint() > 0 ? vo.getPoint() : 0  %> P</a>
			<a class="Point_" id="point">적립예정 포인트 : 500 P</a>
		</div>
		<table>
			<tr>
				<td id="name">상품명</td>
				<td id="mony">금액</td>
				<td id="count">수량</td>
			</tr>
			<%
				
				for (int i = 0; i < list.size(); i++){
					String name = "";
					if(list.get(i).getBurgerName() != null){
						name = list.get(i).getBurgerName(); 
					}else if(list.get(i).getDrinkName() != null){
						name = list.get(i).getDrinkName();
					}else if(list.get(i).getSideName() != null){
						name = list.get(i).getSideName();
					}else if(list.get(i).getDessertName() != null){
						name = list.get(i).getDessertName();
					}else if(list.get(i).getEtcName() != null){
						name = list.get(i).getEtcName();
					}
					
					if(i == 0){
						itemName = name;
					}
					
					totalPrice += Integer.parseInt(list.get(i).getAllPay()) * Integer.parseInt(list.get(i).getQuantity());  
					totalCount += Integer.parseInt(list.get(i).getQuantity());
				%>
				<tr>
					<td id="td<%= list.get(i).getShoppingNum() %>"><%= name %></td>
					<td><%= list.get(i).getAllPay() %></td>
					<td><%= list.get(i).getQuantity() %></td>
				</tr>	
				<%
					}
				%>
		</table>
		</div>
		<div class="payWay">
			<a>결제 수단</a>
		</div>
		<div class="howToPay">
			<div class="hum">
				<a>결제 진행중</a>
			</div>
			<div class="amount"><a>총 결제 예상 금액 : <%= totalPrice %> </a></div>
		</div>
			<div class="paydone" id="kakao_pay">결제하기</div>
	</body>
	<script>
		$("#point").text("적립예정 포인트 : <%= totalPrice / 10 %> P")
		// 결제 진행시 결제가 완료 되면 alert나 class='howToPay'부분의 박스를 없애고 
		$("#kakao_pay").click(() => {
			location.href="payOk.jsp?userId=<%= vo.getPhone() %>&name=<%=itemName%>&quantity=<%= totalCount %>&price=<%= totalPrice %>&point=<%= totalPrice / 10 %>"
			//상품이름, 상품 개수, 주문번호, 주문자id, 가격 넘겨주고
			//https://developers.kakaopay.com/docs/payment/online/single-paymentㄴ
		})
	</script>
</html>