<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String phone = request.getParameter("phone");
String nick = request.getParameter("nick");
String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");

/* name = "홍길동";
phone = "010-1234-5678";
nick = "hong";
year = "2025";
month = "4";
day = "16"; */

if(name == null || name.isEmpty()){
	name = "";
}

if(phone == null || phone.isEmpty()){
	phone = "";
}

if(nick == null || nick.isEmpty()){
	nick = "";
}

if(year == null || year.isEmpty() || year.equals("년")){
	year = "";
}

if(month == null ||month.isEmpty() ||  month.equals("월")){
	month = "";
}

if(day == null || day.isEmpty() || day.equals("일")){
	day = "";
}


%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="./css/signup.css"></link>
		<script src="./js/jquery-3.7.1.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="join" id="join">회 원 가 입</div>
			<form action="joinFace.jsp" method="post" onsubmit="return formCheck()">
				<div class="input-group">
					<input type="text" id="name" name="name" placeholder="이름" <%= name.equals("") ? "" : "value=" + name %>>
					<div id="name-feedback" class="feedback"></div>
					      
					<input type="text" id="phone" name="phone" placeholder="전화번호"<%= phone.equals("") ? "" : "value=" + phone %>>
					<div id="number-feedback" class="feedback"></div>
					
					<input type="text" id="numberCheck" placeholder="전화번호확인">
					<div id="numberCheck-feedback" class="feedback"></div>
					
					<input type="text" id="nick" name="nick" placeholder="닉네임"<%= nick.equals("") ? "" : "value=" + nick %>>
					<div id="nick-feedback" class="feedback"></div>
					
					<div class="birth">
						<select id="year" class="year" name="year">
							<option value="" <%= year.equals("") ? "selected" : "" %>>년</option>
			         		<% 
								for (int i = 1900; i < 2026; i++){
							%>
									<option value="<%= i %>" <%= year.equals(Integer.toString(i)) ? "selected" : "" %>><%= i %></option>
							<%
								}
							%>
						</select>
						<select id="month" class="month" name="month">
							<option value="" <%= day.equals("") ? "selected" : "" %>>월</option>
							<% 
								for (int i = 1; i < 13; i++){
							%>
									<option value="<%= i %>" <%= month.equals(Integer.toString(i)) ? "selected" : "" %>><%= i %></option>
							<%
								}
							%>
						</select>
						<select id="day" class="day" name="day">
							<option value="" <%= day.equals("") ? "selected" : "" %>>일</option>
							<% 
								for (int i = 1; i < 32; i++){
							%>
									<option value="<%= i %>" <%= day.equals(Integer.toString(i)) ? "selected" : "" %>><%= i %></option>
							<%
								}
							%>
						</select>
					</div>
					<div id="birth-feedback" class="feedback"></div>
				</div>
				<button class="btn">얼굴식별하기</button>
				<div class="actions">
					<span>이미 계정이 있으신가요?</span>
					<span onclick="location.href='login.jsp'" style="cursor:pointer;">로그인하기</span>
				</div>
			</form>
		</div>
	</body>
	<script>
		
		function formCheck(){
			let names = $("#name");
			let nameFeedback = $("#name-feedback");
			let phones = $("#phone");
			let numberFeedback = $("#number-feedback");
			let phonesCheck = $("#numberCheck");
			let numberCheckFeedback = $("#numberCheck-feedback");
			let nicks = $("#nick");
			let nickFeedback = $("#nick-feedback");
			let years = $("#year");
			let months = $("#month");
			let days = $("#day");
			let birthFeedback = $("#birth-feedback");
			
			if(names.val().trim() == ""){
				nameFeedback.css("display", "block")
				names.val("").focus();
				nameFeedback.text("이름을 입력하여 주십시오.");
				nameFeedback.removeClass("success");
				return false;
			}
			
			nameFeedback.text("");
			
			if(phones.val().trim() == ""){
				numberFeedback.css("display", "block")
				phones.val("").focus();
				numberFeedback.text("전화번호를 입력하여 주십시오.");
				numberFeedback.removeClass("success");
				return false;
			}
			
			numberFeedback.text("");
			
			if(phonesCheck.val().trim() == ""){
				numberCheckFeedback.css("display", "block")
				phonesCheck.val("").focus();
				numberCheckFeedback.text("전화번호확인을 입력하여 주십시오.");
				numberCheckFeedback.removeClass("success");
				return false;
			}
			
			numberCheckFeedback.text("");
			
			if(phonesCheck.val().trim() != phones.val().trim()){
				numberCheckFeedback.css("display", "block")
				phonesCheck.val("").focus();
				numberCheckFeedback.text("전화번호가 일치하지 않습니다.");
				numberCheckFeedback.removeClass("success");
				return false;
			}
			
			numberCheckFeedback.text("");
			
			if(nicks.val().trim() == ""){
				nickFeedback.css("display", "block")
				nicks.val("").focus();
				nickFeedback.text("닉네임을 입력하여 주십시오.");
				nickFeedback.removeClass("success");
				return false;
			}
			
			nickFeedback.text("");

			if(years.val().trim() == "" || months.val().trim() == "" || days.val().trim() == ""){
				birthFeedback.css("display", "block")
				birthFeedback.text("생년월일을 선택하여 주십시오.");
				birthFeedback.removeClass("success");
				return false;
			}
			
			birthFeedback.text("");
			
			let birth = years.val().trim() + "." + months.val().trim() + "." + days.val().trim()
			
			let message = "";
			message += "이름 : " + names.val().trim();
			message += "\n전화번호 : " + phones.val().trim();
			message += "\n닉네임 : " + nicks.val().trim();
			message += "\n생년월일 : " + birth;
			message += "\n위 정보가 맞습니까?";
			
			result = confirm(message)
			return result;
			
		};
	</script>
</html>