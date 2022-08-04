<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.ProductDTO"%>
<%@page import="com.service.ProductService"%>
<%
	ProductService pservice = new ProductService();
	List<ProductDTO> pdto = pservice.select(2); //nonCoffee's ctno == 2
	
	int i=0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/nonCoffee.css?ver=1"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".menu_image").on("click",function(){
		window.name="Menu";
		openWin = window.open("Option.jsp","option","width=450,height=700,resizable=no,scrollbars=no,top=200,left=725");
		
	});
	
	$(".page1").on("click",function(){
		$("button:focus").css("background-color", "#E1F6FA");
		$("button:not(:focus)").removeAttr("style");
		$.ajax({
			url : "html/nonCoffee.jsp",
			dataType : "html",
			success : function(result){
				$("#menu").html(result);
			}
		});
	})
	
	$(".page2").on("click",function(){
		$("button:focus").css("background-color", "#E1F6FA");
		$("button:not(:focus)").removeAttr("style");
	})
})	
</script>
</head>
<body>
<% if(pdto.size()<6){
 			for(i=6;i<pdto.size();i++){%>
 		<img class="menu_image" id="<%=pdto.get(i).getEpdnm() %>" src="image/menu/논카페/<%=pdto.get(i).getPdnm() %>.png" name="<%= pdto.get(i).getPdno() %>">
 		<div class="menu_info" id = "<%=pdto.get(i).getEpdnm() %>Info"><%=pdto.get(i).getPdnm() %><br>
	<%= pdto.get(i).getPdprice() %>원</div>	
 	<%} %>
<%}else if(pdto.size()>=6){ 
			for(i=6;i<12;i++){%>
		<img class="menu_image" id="<%=pdto.get(i).getEpdnm() %>" src="image/menu/논카페/<%=pdto.get(i).getPdnm() %>.png" name="<%= pdto.get(i).getPdno() %>">
 		<div class="menu_info" id = "<%=pdto.get(i).getEpdnm() %>Info"><%=pdto.get(i).getPdnm() %><br>
	<%= pdto.get(i).getPdprice() %>원</div>	
	<%} %>
<%} %>
<button class="page1"></button>
<button class="page2"></button>
</body>
</html>