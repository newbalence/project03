<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
if(user == null || user.getUserType() != 0){
	response.sendRedirect("mainPage/main.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자 화면</title>
		<link rel="stylesheet" href="<%=path %>/css/management.css"></link>
	</head>
	<body>
		<div class="product">
		<div class="manage">관리자 메뉴</div>
		<form action="addOk.jsp" method="post" enctype="multipart/form-data">
			<div class="productDetail">
				<div id="">
					<div id="img-container">
						<%-- <img src="<%=path %>/img/burger/gibon.png" class="photo"> --%>
					</div>
					<div class="file">
			            <label for="file">이미지파일</label>
			            <input type="file" id="file" name="file">
					</div>
				</div>
				<div class="select">
					<div class="selectCell">
						<select id="menu"class="selectBar" name="add">
							<option value="burger">햄버거 추가</option>
							<option id="side" value="side">사이드 추가</option>
							<option id="drink" value="drink">음료 추가</option>
							<option id="dessert" value="dessert">디저트 추가</option>
							<option id="etc" value="etc">etc 추가</option>
							<option id="addTopping" value="addTopping">토핑 추가</option>
							<option id="delTopping" value="delTopping">토핑 빼기</option>
						</select>
						<%-- <img src="<%=path %>/img/smilePlus.png" class="smilephoto"> --%>
						<div class="add_food"><a class="food">음식명 : </a> <input type="text" class="option" name="food" placeholder="음식명 : "></div>
						<div class="add_pay"><a class="food">가 격 : </a><input type="text" class="option" name="pay" placeholder="가격 : "></div>
					</div>
				</div>
			</div>
			<div class="add">
				<button type="submit" class="add_">추가하기</button>
			</div>
		</form>
	</div>
	</body>
	<script>
		$("#menu").change(function(this){
			console.log(this.value)
		});
		
		
		$("#file").change(function(e) {
		    console.log($("#file")[0].files)
		    const files = $("#file")[0].files;
		    
		    for(let i = 0; i < files.length; i ++){
		    	let file =  files[i];
		    	let reader = new FileReader();
		    	
		    	reader.onload = function(e){
		        	console.log(e.target.result)
		        	if(file.type.includes("image")){
		        		let html = "<img src='"+e.target.result+"' class='photo'>"
		        		$("#img-container").html(html);
		        	}
		        }
		        
		        reader.readAsDataURL(file);
		    }
		    		    
		});
	</script>
</html>