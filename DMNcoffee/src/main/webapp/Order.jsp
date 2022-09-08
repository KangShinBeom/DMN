<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.*" %>    
<%@ page import="com.service.*" %>   
<%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DMN</title>
<link rel="shortcut icon" type="image/x-icon" href="image/utility/버튼.png"><!-- 타이틀 이미지 링크 -->
<link rel="stylesheet" href="css/Order.css?ver=2"/><!-- css 링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap" rel="stylesheet"><!-- 폰트 링크 -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
		
		$(document).ready(function() {
			$("#next").on("click", function() {
				var orderprice = $(".orderprice").val();
				location.href="Step1Servlet?orderprice="+orderprice;
			})
		})
		
		


	   function plusBtn(id) {
		     var amount = $("#amount"+id).val();
	         var price = $("#price"+id).val();
	         var pri = $("#pri"+id).val();
	         var orderprice = $(".orderprice").val();
	         if (parseInt(amount)!=null) {
	            amount = parseInt(amount)+1;
	         }
	         $("#amount"+id).val(amount);
	         $("#price"+id).val(pri*amount);
	         $(".orderprice").val(parseInt(orderprice) + parseInt(pri));
	   }
	   function minusBtn(id) {
		     var amount = $("#amount"+id).val();
	         var price = $("#price"+id).val();
	         var pri = $("#pri"+id).val();
	         var orderprice = $(".orderprice").val();
	         if (parseInt(amount)!=1) {
	            amount = parseInt(amount)-1;
	            $("#price"+id).val(price-pri);
	            $(".orderprice").val(parseInt(orderprice) - parseInt(pri));
	         }
	         $("#amount"+id).val(amount);
	        
	   }
		
	   
	   function singleDel(id) {
		var num = $("#num"+id).val();
		console.log(num);
		location.href="CartDelServlet?num="+num;
	}
	   
	   
	
</script>
<%
	request.setCharacterEncoding("utf-8");
	
	CartService cservice = new CartService();
	List<CartDTO> list = cservice.cartList();
	
	int i = 0;
	
	for(i=0; i<list.size(); i++){
	System.out.println(list.get(i).getPdnm());
	}
%>
</head>
<body>
	<header>
		<jsp:include page="common/top.jsp" flush="true"></jsp:include>
	</header>
	
	<div class="name">주 문 내 역</div>
	
	<div class="question">
		<% 
				if(list.size() != 0){
				for(i=0; i<list.size(); i++) { %>
		<table style="width: 100%;">
			<tr>
				<td rowspan="4" style="width: 150px; height: 150px;"><img src="image/menu/<%=list.get(i).getCtnm()%>/<%=list.get(i).getPdnm()%>.png" style="width: 150px; height: 150px;"></td>
				<td colspan="2" style="text-align: center; font-size: 30px;"><%=list.get(i).getPdnm()%></td>
				<td rowspan="4"><button type="button" class="btn-close" id="singleDel<%=i%>" style="margin-right: 5px;" aria-label="Close" onclick="singleDel(<%=i%>)"></button></td>
			</tr>
			<tr>
				<td style="width: 70px; font-size: 10px;">선택옵션 : </td>
				<td style="font-size: 10px;"><%=list.get(i).getOpt()%></td>
			</tr>
			<tr>
				<td>가격 : </td>
				<td>￦<input id="price<%=i%>" style="border: 0;" readonly value="<%=list.get(i).getTotalprice()%>">
				<input type="hidden" id="pri<%=i %>" value="<%=list.get(i).getTotalprice()%>">
				<input type="hidden" id="num<%=i %>" value="<%=list.get(i).getNum()%>"></td>
			</tr>
			<tr>
				<td>수량 : </td>
				<td>
					<div id=<%=i%>>
		            	<button type="button" class="btn btn-primary btn-sm" onClick="minusBtn(<%=i%>)">-</button>
		                <input type="text" name="amount" style="width: 30px; border: 0; text-align: center;" value="<%=list.get(i).getAmount() %>" id="amount<%=i%>" readonly="readonly">
		                <button type="button" class="btn btn-primary btn-sm" onClick="plusBtn(<%=i%>)">+</button>
					</div>
				</td>
			</tr>
		</table>
		<%} } %>
	</div>
	
	<%	
		int orderprice = 0;
		for(i=0; i<list.size(); i++){
			orderprice += list.get(i).getTotalprice();
		}
	%>
	
	<div class="pay">
		<table border ="1" style="width: 500px; border-spacing: 5px; margin-top: 5px; padding: 5px;">
			<tr>
				<td style="text-align: left;">주문금액</td>
				<td style="text-align: right;"><input type="text" class="orderprice" readonly value="<%=orderprice %>">원</td>
			</tr>
			<tr>
				<td style="text-align: left;">결제금액</td>
				<td style="text-align: right;"><input type="text" class="orderprice" readonly value="<%=orderprice %>">원</td>
			</tr>
		</table>
	</div>
	
	<div class="bottom">
		<table>
			<tr>
				<td><button class="btn2" onclick="location.href='CartDelAllServlet2';">전체취소</button></td>
				<td><button class="btn2" onclick="location.href='Menu.jsp';">이전</button></td>
				<td><button class="btn2" id="next">다음</button></td>
			</tr>
		</table>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>