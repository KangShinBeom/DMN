<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.ProductDTO"%>
<%
	ProductDTO pdto = (ProductDTO)request.getAttribute("ProductRetrieve");
	
	String pdnm = pdto.getPdnm();
	int pdprice = pdto.getPdprice();
	int pdno = pdto.getPdno();
	int ctno = pdto.getCtno();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ProductRetrieve.css">
</head>
<body>
<header>
	<img class="logo"src="image/utility/로고.png" style="width: 100px; height: 50px; margin-left: 330px;">
	<h2>옵션 선택</h2>
	<hr>
</header>
<table>
	<tr>
		<td rowspan="2">
			<img src="image/menu/커피(ICE)/<%=pdnm%>.png" style="width: 200px; height: 200px;">
		</td>
		<td width="250px;" style="font-size: 20px; text-align:center;">
			<%= pdnm %>
		</td>
	</tr>
	<tr>
		<td style="text-align: center;">
			<img src="image/utility/down1.png" style="width: 20px; height: 20px;">
			<input type="text" style="text-align: right; height: 20px; width: 30px;" value="1">
			<img src="image/utility/up1.png" style="width: 20px; height: 20px;"> 
		</td>
	</tr>
</table>
<hr>
<div class="accordion">
	<input type="checkbox" id="opt1">
	<label for="opt1">무료옵션<em></em></label>
	<div>
		<input type="radio" name="ice" id="ice">얼음많이
		<input type="radio" name="ice" id="ice" checked="checked">얼음보통
		<input type="radio" name="ice" id="ice">얼음적게
	</div>
	<input type="checkbox" id="opt2">
	<label for="opt2">유료옵션<em></em></label>
	<div>
		<input type="checkbox" name=paidopt id="paidopt">샷 추가 (+500원)<br>
		<input type="checkbox" name=paidopt id="paidopt">휘핑크림 추가 (+500원)<br>
		<input type="checkbox" name=paidopt id="paidopt">시럽 추가 (+500원)
	</div>
</div>

<div style="margin-top: 80%;">
<button style="margin-left: 50px; width: 150px; font-size: 20px; border: 1px solid; border-radius: 10px; height: 50px;">취소하기</button>
<button style="margin-left: 40px; width: 150px; font-size: 20px; border: 1px solid; border-radius: 10px; height: 50px;">장바구니 담기</button>
</div>



</body>
</html>