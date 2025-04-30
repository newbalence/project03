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
	return;
}

if(name.isEmpty() || phone.isEmpty() || nick.isEmpty() || year.isEmpty() || month.isEmpty() || day.isEmpty()){
	response.sendRedirect("signup.jsp");
	return;
}

String birth = year + "." + month + "." + day;

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>안면인식</title>
		<link rel="stylesheet" href="./css/join_face.css"></link>
		<script src="./js/jquery-3.7.1.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="join" id="join">회 원 가 입</div>
			<form action="signupOk.jsp" method="post" onsubmit="return signupCheck()">
			<input id="name" type="hidden" value="<%= name %>" name="name">
			<input id="phone" type="hidden" value="<%= phone %>" name="phone">
			<input id="nick" type="hidden" value="<%= nick %>" name="nick">
			<input id="birth" type="hidden" value="<%= birth %>" name="birth">
			<input type="hidden" value="" name="face" id="face">
				<div class="face">
					<div class="facePhoto"><video id="video" class="videoon"></video></div>
					<div class="faceCheck">얼굴 식별이 확인 되었습니다.</div>
					<button type="button" class="btn" onclick="location.href='signup.jsp?name=<%= name %>&phone=<%= phone %>&nick=<%= nick %>&year=<%= year %>&month=<%= month %>&day=<%= day %>'">정보 다시 입력하기</button>
					<button class="btn" onclick="return faceReCheck()">다시 촬영하기</button>
					<button class="btn">가입하기</button>
				</div>
			</form>
		</div>
		<script>
			function faceReCheck(){
				alert("다시 촬영하기")
				return false;
			}
			
			function signupCheck(){
				let name = $("#name").val()
				let phone = $("#phone").val()
				let nick = $("#nick").val()
				let birth = $("#birth").val()
				
				let message = "";
				message += "이름 : " + name;
				message += "\n전화번호 : " + phone;
				message += "\n닉네임 : " + nick;
				message += "\n생년월일 : " + birth;
				message += "\n위 정보가 맞습니까?";
				
				result = confirm(message)
				return result;
			}
			
			//자바스크립트로 영상 띄우기
			//영상을 파이썬 웹소켓 서버로 전달
			//파이썬에서 얼굴 벡터 받으면 웹소켓 서버 연결 종료
			
			//알림 텍스트 바꿔주고
			//가입하기 누르면
			var constraints = { audio: true, video: { width: 1280, height: 720 } };
	
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
			    });
		
			async function start() {
				const pc = new RTCPeerConnection({
					iceServers: [{ urls: "stun:stun.l.google.com:19302" }]
				});
				const stream = await navigator.mediaDevices.getUserMedia({ video: true, audio: false });
				
				$("#video").srcObject = stream;
				
				stream.getTracks().forEach(track => pc.addTrack(track, stream));
				   
				const ws = new WebSocket("ws://localhost:8765");
				
				ws.onopen = async () => {
					console.log("WebSocket 연결 완료");
					
					const offer = await pc.createOffer();
					await pc.setLocalDescription(offer);
					
					ws.send(JSON.stringify({
						sdp: pc.localDescription.sdp,
						type: pc.localDescription.type,
						phone: '010.1234.5678'
					}));
					
					console.log("Offer 전송 완료");
				};
				
				ws.onmessage = async (event) => {
					console.log("서버로부터 Answer 수신", event);
					const answer = JSON.parse(event.data);
					await pc.setRemoteDescription(answer);
					console.log("Answer 설정 완료");
				};
			}
			
			start().catch(error => {
				console.error("오류 발생:", error);
			});
			   
		</script>
	</body>
</html>