<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td><input type="checkbox"></td>
			<td>이미지</td>
			<td>상품정보</td>
			<td>수량</td>
			<td>금액</td>
		</tr>
		<%
			for(int i = 0; i < 3; i++){
				%>
				<tr>
					<td>햄버거</td>
					<td>맛있는 버거</td>
					<td>1</td>
					<td>10,000</td>
				</tr>
				<%
			}
		%>
	</table>
</body>
</html>