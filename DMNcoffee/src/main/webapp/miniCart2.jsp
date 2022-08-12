<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.*" %>
<%@ page import="com.service.*" %>
<!DOCTYPE html>
<%
	
request.setCharacterEncoding("utf-8");

ProductDTO pdto = (ProductDTO)session.getAttribute("ProductRetrieve");
CategoryDTO cdto = (CategoryDTO)session.getAttribute("CategoryRetrieve");

System.out.println(pdto);

/* 
ProductService pservice = new ProductService();
ProductDTO pdto = pservice.selectPDNO(pdno);

int ctno = pdto.getCtno();
CategoryService cservice = new CategoryService();
CategoryDTO cdto = cservice.selectCTNM(ctno);

System.out.println(pdto);
System.out.println(cdto); */

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
</body>
</html>