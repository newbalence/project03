<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pay.KakaoPayReadyResponse"%>
<%@page import="org.apache.http.util.EntityUtils"%>
<%@page import="org.apache.http.HttpResponse"%>
<%@page import="org.apache.http.entity.StringEntity"%>
<%@page import="org.apache.http.client.HttpClient"%>
<%@page import="org.apache.http.impl.client.HttpClients"%>
<%@page import="org.apache.http.client.methods.RequestBuilder"%>
<%@page import="org.apache.http.client.methods.HttpUriRequest"%>
<%@page import="org.apache.http.client.methods.HttpPost"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="pay.KakaoPayReadyRequest"%>
<%@page import="org.apache.http.client.entity.*"%>
<%-- location.href="payOk.jsp?userId=<%= vo.getPhone() %>&name=<%=itemName%>&quantity=<%= totalCount %>&price=<%= totalPrice %>" --%>
<%


	String name = request.getParameter("name");
	String userId = request.getParameter("userId");
	String quantity = request.getParameter("quantity");
	String price = request.getParameter("price");
	String point = request.getParameter("point");
	
	request.setCharacterEncoding("utf-8");

	String secretKey = "DEV482050CDE50403CCBB1B3983FF3C212D33963";
	KakaoPayReadyRequest requestVO = new KakaoPayReadyRequest();
	requestVO.setCid("TC0ONETIME");
	
	//주문번호
	requestVO.setPartner_order_id("order1234");
	//주문자 id
	requestVO.setPartner_user_id(userId);
	//상품이름
	requestVO.setItem_name(name);
	//상품개수
	requestVO.setQuantity(Integer.parseInt(quantity));
	//가격
	requestVO.setTotal_amount(Integer.parseInt(price));
	requestVO.setTax_free_amount(0);
	//주문 성공시 redirect url, 성공한 결과 주문결과에 insert하고, 적립금 처리, 주문 상품 장바구니에서 비우기
	requestVO.setApproval_url("http://localhost:8080/project_face/approve.jsp?point="+point);
	//주문 취소시 redirect url 취소처리 주문결과에 insert
	requestVO.setCancel_url("http://localhost:8080/project_face/cancel.jsp");
	//주문 실패시 redirect url 실패처리 주문결과에 insert
	requestVO.setFail_url("http://localhost:8080/project_face/fail.jsp");
	
	ObjectMapper mapper = new ObjectMapper();
	
	String jsonData = mapper.writeValueAsString(requestVO);
	
	HttpClient client = HttpClients.custom().build();

	HttpUriRequest requests = RequestBuilder.post()
	    .setUri("https://open-api.kakaopay.com/online/v1/payment/ready")
	    .setHeader("Content-Type", "application/json")
	    .setHeader("Authorization", "SECRET_KEY "+secretKey)
	    .setEntity(new StringEntity(jsonData, "UTF-8"))
	    .build();

	 HttpResponse responses = client.execute(requests);
	 String responseBody = EntityUtils.toString(responses.getEntity(), "UTF-8");
	 
	 KakaoPayReadyResponse kakaoResponse = mapper.readValue(responseBody, KakaoPayReadyResponse.class);
	 System.out.println(kakaoResponse);
	 
	 //결제 페이지로 리다이렉션
	 response.sendRedirect(kakaoResponse.getNext_redirect_pc_url());
%>