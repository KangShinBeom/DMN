<%@page import="com.dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
//	ProductDTO pdto1 = (ProductDTO)request.getAttribute("ProductOption");
//	String pdnm = pdto1.getPdnm();	
	
//	CategoryDTO cdto1 = (CategoryDTO)request.getAttribute("CategoryOption");
//	int ctno = cdto1.getCtno();
	
//	System.out.println(pdnm);

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="slidebox" style="background-color: #f1f3f5; background-image: url('image/utility/장바구니.png'); background-size: 40%; background-repeat: no-repeat; background-position: center;">
			<!-- <input type="radio" name="slide" id="slide01" checked>
			<input type="radio" name="slide" id="slide02">
			<input type="radio" name="slide" id="slide03">
			<input type="radio" name="slide" id="slide04">
			<ul class="slidelist">
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				<li class="slideitem">
					<a><img src="image/menu/커피(ICE)/아이스 아메리카노.png"></a>
				</li>
				
			</ul>
			<div class="slide-control">
				<div class="control01">
					<label for="slide04" class="prev"></label>
					<label for="slide02" class="next"></label>
				</div>
				<div class="control02">
					<label for="slide01" class="prev"></label>
					<label for="slide03" class="next"></label>
				</div>
				<div class="control03">
					<label for="slide02" class="prev"></label>
					<label for="slide04" class="next"></label>
				</div>
				<div class="control04">
					<label for="slide03" class="prev"></label>
					<label for="slide01" class="next"></label>
				</div>
			</div> -->
	</div>
	<div class = "payANDdelete">
	<button type="button" class="btn btn-primary btn-lg" id="payment" onclick="location.href='Order.jsp'">결제하기</button><br>
	<button type="button" class="btn btn-secondary btn-lg" id="deleteAll">전체취소하기</button>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>