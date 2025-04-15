<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<link rel="stylesheet" href="./css/login.css"></link>
	</head>
	<body>
		<div class="login_container">
			<div class="login" id="login">로그인</div>
			<div>
				<!-- <div class="number">
					<div class="numCheck">전화번호 입력</div>
					<div class="numCheck">010-1234-5678</div>
				</div> -->
				<div class="face_Photo">정면을 바라봐 주세요</div>
				<div class="log">
					<button class="btn" onclick="location.href='loginOk.jsp'">얼굴인식으로 로그인</button>
					<button class="btn" onclick="location.href='loginOk.jsp'">전화번호로 로그인</button>
				</div>
				<div class="actions">
					<span>아직 아이디가 없으신가요?</span>
					<span onclick="location.href='signup.jsp'" style="cursor:pointer;">회원가입하기</span>
				</div>
			</div>
		</div>
	</body>
</html>