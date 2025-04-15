<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글인식 하기위한 코드
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String phone = request.getParameter("phone");
String nick = request.getParameter("nick");

String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");

if(name == null || phone == null || nick == null || year == null || month == null || day == null){
	response.sendRedirect("signup.jsp");
}

if(name.isEmpty() || phone.isEmpty() || nick.isEmpty() || year.isEmpty() || month.isEmpty() || day.isEmpty()){
	response.sendRedirect("signup.jsp");
}

String birth = year + "." + month + "." + day;

%>
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
			<input type="hidden" value="<%= name %>" name="name">
			<input type="hidden" value="<%= phone %>" name="phone">
			<input type="hidden" value="<%= nick %>" name="nick">
			<input type="hidden" value="<%= birth %>" name="birth">
			<input type="hidden" value="" name="face" id="face">
				<div class="face">
					<div class="facePhoto"><video id="video"></video></div>
					<div class="faceCheck">얼굴 식별이 확인 되었습니다.</div>
					<button class="btn">다시 촬영하기</button>
					<button class="btn" onclick="location.href='signupOk.jsp'">가입하기</button>
				</div>
			</form>
		</div>
	</body>
	<script>
		//자바스크립트로 영상 띄우기
		//영상을 파이썬 웹소켓 서버로 전달
		//파이썬에서 얼굴 벡터 받으면 웹소켓 서버 연결 종료
		document.getElementById("face").vale = "벡터...."
		//알림 텍스트 바꿔주고
		//가입하기 누르면
		
		/* var constraints = { audio: true, video: { width: 1280, height: 720 } };

		navigator.mediaDevices.getUserMedia(constraints)
		    .then(function(stream) {
		        var video = document.querySelector('video');
		        // Older browsers may not have srcObject
		        if ("srcObject" in video) {
		            video.srcObject = stream;
		        } else {
		            // Avoid using this in new browsers, as it is going away.
		            video.src = window.URL.createObjectURL(stream);
		        }
		        video.onloadedmetadata = function(e) {
		            video.play();
		        };
		    })
		    .catch(function(err) {
		        console.log(err.name + ": " + err.message);
		    }); */
		   
		   
		    fetch("http://example.com/movies.json").then(function(data){
		    	console.log(data)
		    })
		    console.log("hi")
		    
		    await fetch("http://example.com/movies.json")
		    console.log("hello")
	</script>
</html>