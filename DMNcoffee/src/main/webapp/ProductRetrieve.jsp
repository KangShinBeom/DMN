<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.ProductDTO"%>
<%@ page import="com.dto.CategoryDTO"%>
<%
	ProductDTO pdto = (ProductDTO)request.getAttribute("ProductRetrieve");
	CategoryDTO cdto = (CategoryDTO)request.getAttribute("CategoryRetrieve");
	
	String pdnm = pdto.getPdnm();
	int pdprice = pdto.getPdprice();
	
	String ctnm = cdto.getCtnm();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ProductRetrieve.css">
<script type="text/javascript">
	function doOpenCheck(chk){
	    var obj = document.getElementsByName("ice");
	    for(var i=0; i<obj.length; i++){
	        if(obj[i] != chk){
	            obj[i].checked = false;
	        }
	    }
	}
</script>
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
			<img src="image/menu/<%=ctnm %>/<%=pdnm%>.png" style="width: 200px; height: 200px;">
		</td>
		<td width="250px;" style="font-size: 20px; text-align:center;">
			<%= pdnm %>
		</td>
	</tr>
	<tr>
		<td style="font-size: 20px; text-align: center;">
			￦<%= pdprice %>
		</td>
	</tr>
</table>
<hr>
<div class="accordion">
	<input type="checkbox" id="opt1">
	<label for="opt1">무료옵션<em></em></label>
	<div style="width: 100%; height: 60px; position: absolute;">
		<input type="checkbox" id="cb1" name="ice" value="1">
	    <label for="cb1" style="background-image: url('image/menu/옵션/얼음적게.png'); margin-top: 3px;" onclick="doOpenCheck(this);"></label>
	    <input type="checkbox" id="cb2" name="ice" value="2" checked="checked">
	    <label for="cb2" style="background-image: url('image/menu/옵션/얼음보통.png');" onclick="doOpenCheck(this);"></label>
	    <input type="checkbox" id="cb3" name="ice" value="3">
	    <label for="cb3" style="background-image: url('image/menu/옵션/얼음많게.png');" onclick="doOpenCheck(this);"></label>
	</div>
	<input type="checkbox" id="opt2">
	<label for="opt2" style="margin-top: 60px;">유료옵션<em></em></label>
	<div style="height: 60px;">
		<input type="checkbox" name=paidopt id="cb4">
		<label for="cb4" style="background-image: url('image/menu/옵션/샷추가.png'); margin-top: 3px;"></label>
		<input type="checkbox" name=paidopt id="cb5">
		<label for="cb5" style="background-image: url('image/menu/옵션/휘핑크림.png');"></label>
		<input type="checkbox" name=paidopt id="cb6">
		<label for="cb6" style="background-image: url('image/menu/옵션/바닐라시럽.png');"></label>
		<input type="checkbox" name=paidopt id="cb7">
		<label for="cb7" style="background-image: url('image/menu/옵션/헤이즐넛시럽.png');"></label>
	</div>
</div>

<div style="margin-top: 80%;">
<button style="margin-left: 50px; width: 150px; font-size: 20px; border: 1px solid; border-radius: 10px; height: 50px;">취소하기</button>
<button style="margin-left: 40px; width: 150px; font-size: 20px; border: 1px solid; border-radius: 10px; height: 50px;">장바구니 담기</button>
</div>



</body>
</html>