<%@page import="com.service.CartService"%>
<%@page import="com.dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.service.*" %>
<%@page import="java.util.List" %>
<%
	request.setCharacterEncoding("utf-8");
	
	CartService cservice = new CartService();
	List<CartDTO> list = cservice.cartList();
	
	
	int i = 0;
	
	
	
//	for(i=0; i<list.size(); i++){
//	System.out.println(pdnm);
//	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/miniCart.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#deleteAll").on("click",function(){
			
		location.href="CartDelAllServlet";
	});
	
	$("#payment").on("click", function() {
		
		var list = $("#slideitem").length;
		if (list == 0) {
			Swal.fire({
				  icon: 'error',
				  title: '상품을 선택해주세요.',
				})
			return false;
		} else {
			location.href="OrderServlet";
		}
		
		
	})
	
})
	
</script>
</head>
<body>
<%-- <%if(list.size() == 0) { %>
<div class="slidebox" style="background-color: #f1f3f5; background-image: url('image/utility/장바구니.png'); background-size: 40%; background-repeat: no-repeat; background-position: center;"></div>
<%} else { %>		 --%>	
<div class="slidebox" id="box2" style="background-color: #f1f3f5; background-image: url('image/utility/장바구니.png'); background-size: 40%; background-repeat: no-repeat; background-position: center;">			
<%-- <%} %>		 --%>	
			<input type="radio" name="slide" id="slide01" checked>
			<input type="radio" name="slide" id="slide02">
			<input type="radio" name="slide" id="slide03">
			<input type="radio" name="slide" id="slide04">
			<ul class="slidelist" id="slidelist" style="width: 100%;">
				<% 
			
				if(list.size() != 0){
				for(i=0; i<list.size(); i++) { %>
				
				<li class="slideitem" id="slideitem">
					<a><img src="image/menu/<%=list.get(i).getCtnm()%>/<%=list.get(i).getPdnm()%>.png" style="width: 250px; height: 150px;"></a>
				</li>
				
				<% } }%>
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
			</div>
	</div>
	<div class = "payANDdelete">
	<button type="button" class="btn btn-primary btn-lg" id="payment">결제하기</button><br>
	<button type="button" class="btn btn-secondary btn-lg" id="deleteAll">전체취소하기</button>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>