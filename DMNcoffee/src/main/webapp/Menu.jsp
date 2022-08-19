<%@page import="com.service.CategoryService"%>
<%@page import="com.dto.CategoryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CategoryService cservice = new CategoryService();
	List<CategoryDTO> ctnm = cservice.selectAll();
	//ab
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DMN</title>
<link rel="shortcut icon" type="image/x-icon" href="image/utility/버튼.png"><!-- 타이틀 이미지 링크 -->
<link rel="stylesheet" href="css/Menu.css?ver=1"/><!-- css 링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap" rel="stylesheet"><!-- 폰트 링크 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		
		$.ajax({
		url : "html/iceCoffee.jsp",
		dataType : "html",
		success : function(result){
			$("#menu").html(result);
			}//default 화면
		});
	
		$("#btn2").on("click",function(){
			$("button:focus").css("background-color", "#E1F6FA");
			$("button:not(:focus)").removeAttr("style");
			$.ajax({
				url : "html/iceCoffee.jsp",
				dataType : "html",
				success : function(result){
					$("#menu").html(result);
				}
			});
		})//iceCoffee
		
			$("#btn3").on("click",function(){
				$("button:focus").css("background-color", "#E1F6FA");
				$("button:not(:focus)").removeAttr("style");
				$.ajax({
					url : "html/coffee.jsp",
					dataType : "html",
					success : function(result){
						$("#menu").html(result);
					}
				});
			})//coffee
		
			$("#btn4").on("click",function(){
				$("button:focus").css("background-color", "#E1F6FA");
				$("button:not(:focus)").removeAttr("style");
				$.ajax({
					url : "html/smoothie.jsp",
					dataType : "html",
					success : function(result){
						$("#menu").html(result);
					}
				});
			})//smoothie
		
			$("#btn5").on("click",function(){
				$("button:focus").css("background-color", "#E1F6FA");
				$("button:not(:focus)").removeAttr("style");
				$.ajax({
					url : "html/deCoffee.jsp",
					dataType : "html",
					success : function(result){
						$("#menu").html(result);
					}
				});
			})//deCoffee
		
			$("#btn6").on("click",function(){
				$("button:focus").css("background-color", "#E1F6FA");
				$("button:not(:focus)").removeAttr("style");
				$.ajax({
					url : "html/nonCoffee.jsp",
					dataType : "html",
					success : function(result){
						$("#menu").html(result);
					}
				});
			})//nonCoffee
		
			$("#btn7").on("click",function(){
				$("button:focus").css("background-color", "#E1F6FA");
				$("button:not(:focus)").removeAttr("style");
				$.ajax({
					url : "html/dessert.jsp",
					dataType : "html",
					success : function(result){
						$("#menu").html(result);
					}
				});
			})//dessert
})
</script>
</head>

<body>
	<header>
		<jsp:include page="common/top.jsp"></jsp:include>
	</header>
	<!-- 카테고리 선택 버튼 테이블 -->
	<jsp:include page="common/Category.jsp" flush="true"></jsp:include>
	<!-- 메뉴 html -->
	<div id="menu"></div>
	
	<!-- 장바구니  이미지 교체하기 구현하기   -->
	<%-- <jsp:include page="miniCart.jsp"></jsp:include> --%>
	<div class="slidebox" style="background-color: #f1f3f5; background-image: url('image/utility/장바구니.png'); background-size: 40%; background-repeat: no-repeat; background-position: center;">
	<jsp:include page="miniCart.jsp" flush="true"></jsp:include>
	<!-- <img src="image/utility/장바구니.png" style="size: 40%; position: absolute; margin-left: 70px; margin-top: 10px;"> -->
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
	

