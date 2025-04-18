<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="./css/mypage.css"></link>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="mypage">
			<div class="photo">
				<div class="photo_face">
					<div class="facePhoto">
						<a>사진</a>
					</div>
					<div class="facerow">
						<a class="Info">회원 이름 : </a><br>
						<a class="Info">포인트 : </a>
					</div>
				</div>
			</div>
		</div>
		<div class="info">
			<div class="infoMember">
				<a class="Info">회원정보</a>
			</div>
			<div class="memberInfo">
				<a class="Info">고객명 : 이름</a><br>
				<br>
				<a class="Info">비밀번호 : ********</a><br>
				<br>
				<a class="Info">연락처</a><br>
				<br>
				<a class="Info">닉네임</a><br>
				<br>
				<a class="Info">생년월일</a>
				<br>
			</div>
			<div class="infoTwo">
				<div class="Info">최근 본 제품</div>
				<div class="Info">최근 주문 제품</div>
				<div class="Info">쿠 폰 함</div>
			</div>
		</div>
	</body>
</html>