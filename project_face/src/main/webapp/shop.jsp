<%@page import="shopping.shoppingVO"%>
<%@page import="java.util.List"%>
<%@page import="shoppingList.shoppingListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
if(user == null){
	response.sendRedirect("mainPage/main.jsp");
	return;
}

shoppingListDAO dao = new shoppingListDAO();
List<shoppingVO> list = dao.selectShopList(user.getPhone());
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장바구니</title>
		<link rel="stylesheet" href="<%=path %>/css/shop.css"></link>
		</head>
	<body>

		<div class="shop">
			<h2 class="cart">SHOPPING CART</h2>
		</div>
		<table>
			<tr>
				<td><input type="checkbox" id="mainCb" onchange="chageAllCheckbox(this)"></td>
				<td>상품정보</td>
				<td>수량</td>
				<td>상품구매 금액</td>
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
					
				%>
				<tr>
					<td id="td<%= list.get(i).getShoppingNum() %>"><input type="checkbox" onchange="changeSubCheckbox(this)" name="sub" id="<%= list.get(i).getShoppingNum() %>"></td>
					<td><%= name %></td>
					<td><%= list.get(i).getQuantity() %></td>
					<td><%= list.get(i).getAllPay() %></td>
				</tr>	
				<%
					}
				%>
		</table>
		<div class="shopBtn">
			<a class="btn" onclick="cleanAllItem()">장바구니 비우기</a>
			<a class="btn" onclick="payCheckItem()">결제하기</a>
			<a class="btn" onclick="deleteCheckedItem()">삭제하기</a>
		</div>
		
		<form id="payForm"></form>
	</body>
	<script>
		//모든 체크박스 체크
		function chageAllCheckbox(e){
			console.log(e.checked);
			let subCheckboxs = document.getElementsByName("sub")
			for(let i = 0; i < subCheckboxs.length; i ++){
				subCheckboxs[i].checked = e.checked 
			}
		}
		
		function changeSubCheckbox(e){
			let subCheckboxs = document.getElementsByName("sub")
			for(let i = 0; i < subCheckboxs.length; i ++){
				if(!subCheckboxs[i].checked){
					document.getElementById("mainCb").checked = false;
				} 
			}
		}
		
		function deleteCheckedItem(){
			let checkedList = []
			let subCheckboxs = document.getElementsByName("sub")
			for(let i = 0; i < subCheckboxs.length; i ++){
				if(subCheckboxs[i].checked){
					checkedList.push(subCheckboxs[i].id);
				} 
			}
			
			console.log(checkedList);
			if(checkedList.length < 1){
				return alert("선택하신 상품이 없습니다.")
			}
			
			if(confirm("선택하신 상품 " + checkedList.length + "개를 삭제하시겠습니까?")){
				$.ajax({
					url : "shopDelete.jsp",
					type : "post",
					data : {
						items : checkedList 
					},
					success : function(result){
						console.log(result)
						if(result.trim() == "success"){
							console.log("성공?");
							for(let i = 0; i < checkedList.length; i ++){
								$("#td"+checkedList[i]).parent().remove();
							}
						}
					},
					error : function(){
						console.log("error")
					}
					
				})
			}else{
				return
			}
		}
		
		function cleanAllItem(){
			let checkedList = []
			let subCheckboxs = document.getElementsByName("sub")
			for(let i = 0; i < subCheckboxs.length; i ++){
				checkedList.push(subCheckboxs[i].id);
			}
			
			if(confirm("전체 상품 " + checkedList.length + "개를 삭제하시겠습니까?")){
				$.ajax({
					url : "shopDelete.jsp",
					type : "post",
					data : {
						items : checkedList 
					},
					success : function(result){
						console.log(result)
						if(result.trim() == "success"){
							console.log("성공?");
							for(let i = 0; i < checkedList.length; i ++){
								$("#td"+checkedList[i]).parent().remove();
							}
						}
					},
					error : function(){
						console.log("error")
					}
					
				})
			}else{
				return
			}
		}
		
		function payCheckItem(){
			let checkedList = []
			let subCheckboxs = document.getElementsByName("sub")
			for(let i = 0; i < subCheckboxs.length; i ++){
				if(subCheckboxs[i].checked){
					checkedList.push(subCheckboxs[i].id);
				} 
			}
			
			console.log(checkedList);
			if(checkedList.length < 1){
				return alert("선택하신 상품이 없습니다.")
			}
			
			$("#payForm").attr("action", "pay/payment.jsp");
			$("#payForm").attr("method", "POST");
			 
			for(let i = 0; i < checkedList.length; i ++){
				const payParam = $("<input type='hidden' value=" + checkedList[i] + " name='items' readonly>");
				$("#payForm").append(payParam);				
			}
			
			$("#payForm").submit();
		}
	</script>
</html>