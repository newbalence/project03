<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안면인식</title>
<link rel="stylesheet" href="./css/join_face.css"></link>
</head>
<body>
<div class="container">
	<div class="join" id="join">회 원 가 입</div>
 	<form action="signupOk.jsp" method="post" onsubmit="return userFormCheck()">
		<div class="face">
		   <div class="facePhoto">정면을 바라봐 주세요</div>
           <div class="faceCheck">얼굴 식별이 확인 되었습니다.</div>
		   <button class="btn">다시 촬영하기</button>
           <button class="btn" onclick="location.href='signupOk.jsp'">가입하기</button>
        </div>
	</form>
</div>
</body>
</html>