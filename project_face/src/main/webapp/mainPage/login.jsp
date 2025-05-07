<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<link rel="stylesheet" href="../css/login.css"></link>
		<script src="../js/jquery-3.7.1.js"></script>
	</head>
	<body>
		<div class="login_container">
			<div class="login" id="login">로그인</div>
			<form action="loginOk.jsp" method="post" onsubmit="return formSubmit()">
				<div class="face_Photo">
					<div id="videoMent"class="changevideooff">얼굴인식으로 로그인하려면 정면을 바라봐 주세요 <br> (카메라를 켜주세요)</div>
					<video id="video" class="videooff"></video>
				</div>
				<div class="number">
						<!-- <div class="numCheck">전화번호 입력</div> -->
						<input type="text" name="phone" id="phoneNum"class="numCheck" placeholder="전화번호를 입력하세요 (특수문자 제외)">
				</div>
				<div class="log">
					<button type="button" class="btn cameraon" id="cameraon" name="cameraon"onclick="return changeCam(this)">카메라 켜기</button>
					<button type="button" class="btn cameraoff" id="cameraoff" name="cameraoff"onclick="return changeCam(this)">카메라 끄기</button>
					<!-- <button type="button" class="btn" id="photo">로그인</button> -->
					<button class="btn">로그인</button>
				</div>
				<div class="actions">
					<span>아직 계정이 없으신가요?</span>
					<span onclick="location.href='signup.jsp'" style="cursor:pointer;">회원가입하기</span>
				</div>
			</form>
		</div>
	</body>
	<script>
		var numRegex = /[^0-9]/g;
		
		function formSubmit(){
			let phone = $("#phoneNum");
			rephone = phone.val().replace(numRegex, "")
			
			if (rephone.length > 11) {
				phone.val("").focus();
		        alert('글자수는 11자까지 입력 가능합니다.');
		        return false;
		    };
		    phone.val(rephone)
			return true;
		}
		
		const host = window.location.hostname;
		
		function changeCam(e){
			btnName = e.id
						
			console.log(host);
			if(btnName == "cameraon"){
				
				$("#videoMent").removeClass("changevideooff");
				$("#videoMent").addClass("changevideoon");
				$("#video").removeClass("videooff");
				$("#video").addClass("videoon");
				$("#cameraon").removeClass("cameraon");
				$("#cameraon").addClass("cameraoff");
				$("#cameraoff").removeClass("cameraoff");
				$("#cameraoff").addClass("cameraon");
				
				start().catch(error => {
					console.error("오류 발생:", error);
				});
				
			}else if(btnName == "cameraoff"){
				
				$("#videoMent").addClass("changevideooff");
				$("#videoMent").removeClass("changevideoon");
				$("#video").addClass("videooff");
				$("#video").removeClass("videoon");
				$("#cameraon").addClass("cameraon");
				$("#cameraon").removeClass("cameraoff");
				$("#cameraoff").addClass("cameraoff");
				$("#cameraoff").removeClass("cameraon");
				
			}
		}
		
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
			
			const ws = new WebSocket("wss://"+host+":8765");
			
			ws.onopen = async () => {
				console.log("WebSocket 연결 완료");
				
				const offer = await pc.createOffer();
				await pc.setLocalDescription(offer);
				
				ws.send(JSON.stringify({
					sdp: pc.localDescription.sdp,
					type: pc.localDescription.type,
					phone: $("#phoneNum").val(),
					page : "login"
				}));
				
				console.log("Offer 전송 완료");
			};
			
			ws.onerror = (event) => {
				console.log(event)
			}
			
			ws.onmessage = async (event) => {
				console.log("서버로부터 Answer 수신", event);
				const answer = JSON.parse(event.data);
				if(answer.type == "answer"){
					await pc.setRemoteDescription(answer);
				}else if(answer.type == "face"){
					ws.close()
					location.href = "loginOk.jsp?phone=" + answer.result_phone;
				}
				console.log("Answer 설정 완료");
			};
		}
		
		
		
	</script>
</html>