<%@page import="side.sideVO"%>
<%@page import="etc.etcVO"%>
<%@page import="drink.drinkVO"%>
<%@page import="dessert.dessertVO"%>
<%@page import="burger.burgerVO"%>
<%@page import="side.sideDAO"%>
<%@page import="etc.etcDAO"%>
<%@page import="drink.drinkDAO"%>
<%@page import="dessert.dessertDAO"%>
<%@page import="burger.burgerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%
String type = request.getParameter("type");
String no = request.getParameter("no");

int num = 0;
String name = "";
String pay = "";
String imgName = "";
String imgLocation = "";


if(type.equals("burger")){
	burgerDAO dao = new burgerDAO();
	burgerVO vo = dao.selBurgerOne(Integer.parseInt(no));
	
	num = vo.getBurgerNum();
	name = vo.getBurgerName();
	pay = vo.getBurgerPay();
	imgName = vo.getBurgerImgName();
	imgLocation = vo.getBurgerImgLocation();
	
}else if(type.equals("dessert")){
	dessertDAO dao = new dessertDAO();
	dessertVO vo = dao.selDessertOne(Integer.parseInt(no));
	
	num = vo.getDessertNum();
	name = vo.getDessertName();
	pay = vo.getDessertPay();
	imgName = vo.getDessertImgName();
	imgLocation = vo.getDessertImgLocation();
	
}else if(type.equals("drink")){
	
	drinkDAO dao = new drinkDAO();
	drinkVO vo = dao.selDrinkOne(Integer.parseInt(no));
	
	num = vo.getDrinkNum();
	name = vo.getDrinkName();
	pay = vo.getDrinkPay();
	imgName = vo.getDrinkImgName();
	imgLocation = vo.getDrinkImgLocation();
	
}else if(type.equals("etc")){
	etcDAO dao = new etcDAO();
	etcVO vo = dao.selEtcOne(Integer.parseInt(no));

	num = vo.getEtcNum();
	name = vo.getEtcName();
	pay = vo.getEtcPay();
	imgName = vo.getEtcImgName();
	imgLocation = vo.getEtcImgLocation();
	
}else if(type.equals("side")){
	sideDAO dao = new sideDAO();
	sideVO vo = dao.selSideOne(no);
	
	num = vo.getSideNum();
	name = vo.getSideName();
	pay = vo.getSidePay();
	imgName = vo.getSideImgName();
	imgLocation = vo.getSideImgLocation();
	
}else{
	response.sendRedirect("mainpage/main.jsp");
	return;
}

%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>제품상세보기</title>
		<link rel="stylesheet" href="./css/details.css"></link>
		<script src="./js/jquery-3.7.1.js"></script>
		</head>
	<body>s
		<div class="detail">
			<a>제품상세보기</a>
		</div>
		<form action="shopOk.jsp" method="post">
		<input tpye="hidden" value="<%= user.getPhone() %>" name="phone">
		<div class="product">
			<div class="productDetail">
				<img src="./img/burger/gibon.png" class="photo">
			</div>
			<div class="select">
				<div class="productName">
					<a>상품이름 : <%= name %> </a><br>
					<a class="price">상품가격 : <%= pay %> </a>
				</div>
				<%
					if(type.equals("burger")){
						%>
						<div class="selectCell">
							<select class="selectBar">
								<option>토핑추가</option>
								<option>패티 추가 +5,000</option>
								<option>치즈추가 +3,000</option>
								<option>베이컨 +3,000</option>
								<option>치킨추가 +5,000</option>
								<option>새우추가 5,000</option>
								<option>해시브라운 +3,000</option>
								<option>통모짜추가 +3,000</option>
							</select>
							<select class="selectBar">
								<option>소스추가</option>
								<option>BBQ 소스+500</option>
								<option>치폴레 소스 +500</option>
								<option>스리라차 +500</option>
								<option>랜치소스 +500</option>
								<option>머스타드 +500</option>
								<option>타바스코 +3,000</option>
							</select>
							<select class="selectBar">
								<option>토핑빼기</option>
								<option>토마토</option>
								<option>양파</option>
								<option>베이컨</option>
								<option>치즈</option>
								<option>피클</option>
							</select>
						</div>
						<%
					}else if(type.equals("drink")){
						%>
						<div class="selectCell">
							<select class="selectBar">
								<option>음료옵션</option>
								<option>ICE</option>
								<option>HOT</option>
								<option>얼음많이</option>
								<option>얼음조금</option>
							</select>
						</div>
						<%
					}
				%>
				<div id="bottomPay">
					<div class="totalPay">
						<input type="hidden" value="<%= pay %>" name="pay">
						<a>총 가격 : <%= pay %> 원</a>
					</div>
				</div>
			</div>
		</div>
		<% if(user != null){
			%>
			<div class="buy">
				<a onclick="location.href='<%=path%>/pay/payment.jsp'">구매하기</a>
			</div>
			<div class="decide">
				<button type="submit" class="decision"><a>장바구니</a></button>
				<div class="decision"><a onclick="location.href='<%=path%>/menu/<%= type %>.jsp'">취 소 </a></div>
			</div>
			<%
		}
		%>
		</form>
	<!-- <div>
		<div class="reviewCell">
			<a class="review">상품평</a>
		</div>
		<div class="ReviewCell">
			<button class="btn-best"><a>베스트순</a></button>
			<div class="btn-bar">|</div>
			<button class="btn-best"><a>최신순</a></button>
		</div>
		<div class="review-list">
			<div class="review-info">
				<div class="info-profile">
					<img src="../img/profile.jpg" class="profile-photo">
					<div class="user-info">
						<a class="userName">지브리 대유행</a>
						<div class="starRev">
							<span class="starR on">★</span>
							<span class="starR">★</span>
							<span class="starR">★</span>
							<span class="starR">★</span>
							<span class="starR">★</span>	
						</div>
					<div class="star-container">
						<div class="star-gray">
							<div class="star-yellow" style="width: 30%;"></div>
						</div>
						<div class="starCheck"><img src="./img/five-star.png" class="star-photo"></div>
						<div class="product-data">2025.04.16</div>
					</div>
					</div>
				</div>
				<div class="review-writeCell">
					<a onclick="location.href='reviewOk.jsp'" class="name"></a>
					<input type="text" class="review-write">
				</div>
			</div>
		</div>
	</div> -->
	<script>
		/* //별점 주기
		$('.starRev span').click(function(){
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		})	 */	
	</script>
	</body>
</html>