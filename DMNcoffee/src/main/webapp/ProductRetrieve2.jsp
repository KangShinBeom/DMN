<%@page import="com.service.OptionService"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.dto.OptionDTO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.ProductDTO"%>
<%@ page import="com.dto.CategoryDTO"%>
<%
	ProductDTO pdto = (ProductDTO)request.getAttribute("ProductRetrieve");
	CategoryDTO cdto = (CategoryDTO)request.getAttribute("CategoryRetrieve");
	
	String pdnm = pdto.getPdnm();
	int pdprice = pdto.getPdprice();
	int ctno = pdto.getCtno();
	String ctnm = cdto.getCtnm();
	System.out.println(ctno);
	
	
	OptionService oservice = new OptionService();
	List<OptionDTO> odto = oservice.selectOPT(ctno);
	
	int i = 0;
	String optname = odto.get(ctno).getOptname();
	int optprice = odto.get(ctno).getOptprice();
//	int sumprice = pdprice + optprice;
	
	
	session.setAttribute("Option", odto);

		for(i=0; i < odto.size(); i++) {
			if(odto.get(i).getOptprice() == 0){
				System.out.println(odto.get(i).getOptname());
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ProductRetrieve.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<header>
	<img class="logo"src="image/utility/로고.png" style="width: 100px; height: 50px; margin-left: 330px;">
	<h2>옵션 선택</h2>
	<hr>
</header>
<form name=form1> 
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
			￦<input type="text" name="sum" style="text-align: center; border: 0px; width: 100px;" value="<%=pdprice%>">
		</td>
	</tr>
</table>

<div class="accordion" id="accordionPanelsStayOpenExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        무료옵션
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo" style="position: absolute;">
      <div class="accordion-body" style="padding: 7px; height: 70px;">
      	
      	<div class="btn-group btn-group-md" role="group" aria-label="Basic radio toggle button group">
      	<%  for(i=0; i<odto.size(); i++) { 
      			if(odto.get(i).getOptprice()==0){
      				if(odto.get(i).getOptname()!=null){%>
		  <input type="checkbox" class="btn-check" name="btnradio" id="btnradio<%=i %>" autocomplete="off">
		  <label class="btn btn-outline-primary" for="btnradio<%=i %>" style="width: 130px; height: 50px; line-height: 130%;"><%= odto.get(i).getOptname()%><br>(+￦<%=odto.get(i).getOptprice()%>)</label>
		<% }}}%>
		</div>
      </div>
    </div>
  </div>
  

  <div class="accordion-item" style="margin-top: 60px; position: absolute; width: 100%; border-top: 1px outset;">
    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
       유료옵션
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree"  style="overflow-x: scroll;">
      <div class="accordion-body"  style="height:70px; padding: 7px;">
      
      	<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
		  
		  <%  for(i=0; i<odto.size(); i++) { 
	      			if(odto.get(i).getOptprice()!=0){%>
			 <input type="checkbox" class="btn-check" name="btncheck" id="btncheck<%=i %>" autocomplete="off" value="<%=odto.get(i).getOptprice()%>" onclick="sumchk(this)">
		 	 <label class="btn btn-outline-primary" for="btncheck<%=i%>"  style="width: 130px; height: 50px; line-height: 130%;"><%=odto.get(i).getOptname()%><br>(+￦<%=odto.get(i).getOptprice()%>)</label>
		  <% } else{} }%>
		</div>
      </div>
    </div>
  </div>
</div>
</form> 




<button type="button" class="btn btn-primary btn-lg" style="margin-top: 300px; margin-left: 50px; width: 165px;" onclick="window.close(); location.href='OptionServlet'">장바구니 담기</button>
<button type="button" class="btn btn-secondary btn-lg" style="margin-top: 300px; margin-left: 10px; width: 165px;" onclick="window.close()">취소하기</button>

<script>
	function sumchk(val){
	ans=document.form1.sum.value
	if (isNaN(ans)==true) {ans=""}
	if (val.checked==true){
	d=(ans/1)+(val.value/1)
	}
	else{
	d=(ans/1)-(val.value/1)
	}
	document.form1.sum.value=d
	}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>