<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var pdno =opener.document.getElementById("pdno").value;
	
	location.href="OptionServlet?pdno="+pdno;
});		
</script>
<title>Insert title here</title>
</head>
<body>

</body>
</html>