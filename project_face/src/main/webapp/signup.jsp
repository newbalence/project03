<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="./css/signup.css"></link>
	</head>
	<body>
		<div class="container">
			<div class="join" id="join">회 원 가 입</div>
			<form action="joinFace.jsp" method="post" onsubmit="return userFormCheck()">
				<div class="input-group">
					<input type="text" id="name" name="name" placeholder="이름">
					<div id="name-feedback" class="feedback">이름 입력은 필수입니다.</div>
					      
					<input type="text" id="numberCheck" name="phone" placeholder="전화번호">
					<div id="number-feedback" class="feedback">전화번호 입력은 필수입니다.</div>
					
					<input type="text" id="numberCheck" placeholder="전화번호확인">
					<div id="numberCheck-feedback" class="feedback">전화번호 확인은 필수입니다.</div>
					
					<input type="text" id="nick" name="nick" placeholder="닉네임">
					<div id="nick-feedback" class="feedback">닉네임 입력은 필수입니다.</div>
					
					<div class="birth">
						<select class="year" name="year">
							<option>년도</option>
			         		<% 
								for (int i = 1900; i < 2026; i++){
							%>
									<option><%= i %></option>
							<%
								}
							%>
						</select>
						<select class="month" name="month">
							<option>월</option>
							<% 
								for (int i = 1; i < 13; i++){
							%>
									<option><%= i %></option>
							<%
								}
							%>
						</select>
						<select class="day" name="day">
							<option>일</option>
							<% 
								for (int i = 1; i < 32; i++){
							%>
									<option><%= i %></option>
							<%
								}
							%>
						</select>
					</div>
				</div>
				<button class="btn">얼굴식별하기</button>
				<div class="actions">
					<span>이미 계정이 있으신가요?</span>
					<span onclick="location.href='login.jsp'" style="cursor:pointer;">로그인하기</span>
				</div>
			</form>
		</div>
	</body>
</html>