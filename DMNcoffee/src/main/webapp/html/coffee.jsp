<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.ProductDTO"%>
<%@page import="com.service.ProductService"%>
<%
	ProductService pservice = new ProductService();
	List<ProductDTO> pdto = pservice.select(5); //coffee's ctno == 5
			
	int i=0;		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/coffee.css?ver=1"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".menu_image").on("click",function(){
		var pdno = $(this).attr("data-xxx");
		$("#pdno").val(pdno);
		
		window.name="Menu";
		openWin = window.open("Option.jsp","option","width=300,height=500,resizable=no,scrollbars=no,top=120,left=475");
		/* 노트북 자식창 사이즈 : "width=300,height=650,resizable=no,scrollbars=no,top=200,left=500" */
		/* 데스크톱 자식창 사이즈 : "width=450,height=700,resizable=no,scrollbars=no,top=200,left=725" */
	});
})	
</script>
</head>
<body>
<% if(pdto.size()<6){
 			for(i=0;i<pdto.size();i++){%>
 		<img class="menu_image" id="<%=pdto.get(i).getEpdnm() %>" src="image/menu/커피(HOT)/<%=pdto.get(i).getPdnm() %>.png" data-xxx="<%= pdto.get(i).getPdno() %>">
 		<div class="menu_info" id = "<%=pdto.get(i).getEpdnm() %>Info"><%=pdto.get(i).getPdnm() %><br>
	<%= pdto.get(i).getPdprice() %>원</div>	
 	<%} %>
<%}else if(pdto.size()>=6){ 
			for(i=0;i<6;i++){%>
		<img class="menu" id="<%=pdto.get(i).getEpdnm() %>" src="image/menu/커피(HOT)/<%=pdto.get(i).getPdnm() %>.png" data-xxx="<%= pdto.get(i).getPdno() %>">
 		<div class="menu_info" id = "<%=pdto.get(i).getEpdnm() %>Info"><%=pdto.get(i).getPdnm() %><br>
	<%= pdto.get(i).getPdprice() %>원</div>	
	<%} %>
<%} %>
<input type="hidden" id="pdno">
</body>
</html>