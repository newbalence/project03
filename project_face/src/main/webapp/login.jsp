<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<link rel="stylesheet" href="./css/login.css"></link>
		<script src="./js/jquery-3.7.1.js"></script>
	</head>
	<body>
		<div class="login_container">
			<div class="login" id="login">로그인</div>
			<form action="loginOk.jsp" method="post">
				<div class="face_Photo">
					<div id="videoMent"class="changevideooff">얼굴인식으로 로그인하려면 정면을 바라봐 주세요 <br> (카메라를 켜주세요)</div>
					<video id="video" class="videooff"></video>
				</div>
				<div class="number">
						<!-- <div class="numCheck">전화번호 입력</div> -->
						<input type="text" name="phone" class="numCheck" placeholder="전화번호를 입력하세요">
				</div>
				<div class="log">
					<button type="button" class="btn cameraon" id="cameraon" onclick="return changeCam(this)">카메라 켜기</button>
					<button type="button" class="btn cameraoff" id="cameraoff" onclick="return changeCam(this)">카메라 끄기</button>
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
		
		function changeCam(e){
			btnName = e.id
			if(btnName.trim() == "cameraon"){
				$("#videoMent").removeClass("changevideooff");
				$("#videoMent").addClass("changevideoon");
				$("#video").removeClass("videooff");
				$("#video").addClass("videoon");
				$("#cameraon").removeClass("cameraon");
				$("#cameraon").addClass("cameraoff");
				$("#cameraoff").removeClass("cameraoff");
				$("#cameraoff").addClass("cameraon");
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
		   
	</script>
</html>