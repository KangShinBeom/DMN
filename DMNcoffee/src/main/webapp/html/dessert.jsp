<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.ProductDTO"%>
<%@page import="com.service.ProductService"%>
<%
	ProductService pservice = new ProductService();
	List<ProductDTO> pdto = pservice.select(1); // desert's ctno == 1
	
	int i=0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/dessert.css?ver=1"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".menu_image").on("click",function(){
		var pdno = $(this).attr("data-xxx");
		$("#pdno").val(pdno);
		
		window.name="Menu";
		openWin = window.open("Option.jsp","option","width=450,height=700,resizable=no,scrollbars=no,top=200,left=725");
		/* 노트북 자식창 사이즈 : "width=300,height=650,resizable=no,scrollbars=no,top=200,left=500" */
		/* 데스크톱 자식창 사이즈 : "width=450,height=700,resizable=no,scrollbars=no,top=200,left=725" */
	});
	
	$(".page2").on("click",function(){
		$("button:focus").css("background-color", "#E1F6FA");
		$("button:not(:focus)").removeAttr("style");
		$.ajax({
			url : "html/dessert2.jsp",
			dataType : "html",
			success : function(result){
				$("#menu").html(result);
			}
		});
	})
	
	$(".page3").on("click",function(){
		$("button:focus").css("background-color", "#E1F6FA");
		$("button:not(:focus)").removeAttr("style");
		$.ajax({
			url : "html/dessert3.jsp",
			dataType : "html",
			success : function(result){
				$("#menu").html(result);
			}
		});
	})
	
	$(".page1").on("click",function(){
		$("button:focus").css("background-color", "#E1F6FA");
		$("button:not(:focus)").removeAttr("style");
	})
})	
</script>
</head>
<body>
<% if(pdto.size()<6){
 			for(i=0;i<pdto.size();i++){%>
 		<img class="menu_image" id="<%=pdto.get(i).getEpdnm() %>" src="image/menu/디저트/<%=pdto.get(i).getPdnm() %>.png" data-xxx="<%= pdto.get(i).getPdno() %>">
 		<div class="menu_info" id = "<%=pdto.get(i).getEpdnm() %>Info"><%=pdto.get(i).getPdnm() %><br>
	<%= pdto.get(i).getPdprice() %>원</div>	
 	<%} %>
<%}else if(pdto.size()>=6){ 
			for(i=0;i<6;i++){%>
		<img class="menu_image" id="<%=pdto.get(i).getEpdnm() %>" src="image/menu/디저트/<%=pdto.get(i).getPdnm() %>.png" data-xxx="<%= pdto.get(i).getPdno() %>">
 		<div class="menu_info" id = "<%=pdto.get(i).getEpdnm() %>Info"><%=pdto.get(i).getPdnm() %><br>
	<%= pdto.get(i).getPdprice() %>원</div>	
	<%} %>
<%} %>
<button class="page1"></button>
<button class="page2"></button>	
<button class="page3"></button>
<input type="hidden" id="pdno">
</body>
</html>