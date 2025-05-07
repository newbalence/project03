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

<%
	request.setCharacterEncoding("utf-8");

	String secretKey = "DEV482050CDE50403CCBB1B3983FF3C212D33963";
	KakaoPayReadyRequest requestVO = new KakaoPayReadyRequest();
	requestVO.setCid("TC0ONETIME");
	
	//ì£¼ë¬¸ë²í¸
	requestVO.setPartner_order_id("order1234");
	//ì£¼ë¬¸ì id
	requestVO.setPartner_user_id("user5678");
	//ìíì´ë¦
	requestVO.setItem_name("ì´ì½íì´");
	//ìíê°ì
	requestVO.setQuantity(1);
	//ê°ê²©
	requestVO.setTotal_amount(2200);
	requestVO.setTax_free_amount(0);
	//ì£¼ë¬¸ ì±ê³µì redirect url, ì±ê³µí ê²°ê³¼ ì£¼ë¬¸ê²°ê³¼ì insertíê³ , ì ë¦½ê¸ ì²ë¦¬, ì£¼ë¬¸ ìí ì¥ë°êµ¬ëìì ë¹ì°ê¸°
	requestVO.setApproval_url("http://localhost:8080/project_face/approve.jsp");
	//ì£¼ë¬¸ ì·¨ìì redirect url ì·¨ìì²ë¦¬ ì£¼ë¬¸ê²°ê³¼ì insert
	requestVO.setCancel_url("http://localhost:8080/project_face/cancel.jsp");
	//ì£¼ë¬¸ ì¤í¨ì redirect url ì¤í¨ì²ë¦¬ ì£¼ë¬¸ê²°ê³¼ì insert
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
	 
	 //ê²°ì  íì´ì§ë¡ ë¦¬ë¤ì´ë ì
	 response.sendRedirect(kakaoResponse.getNext_redirect_pc_url());
%>