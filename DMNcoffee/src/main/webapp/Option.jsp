<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var pdno =opener.document.getElementById("pdno").value;
	
	/* $(document).one("onload",function(){
		location.href="ProductRetrieveServlet?pdno="+pdno;//한번만 실행되게 하기
	}) */
	location.href="ProductRetrieveServlet?pdno="+pdno;//한번만 실행되게 하기
});		
</script>
</head>
<body>
</body>
</html>