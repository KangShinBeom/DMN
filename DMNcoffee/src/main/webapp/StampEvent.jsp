<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var phone2 =  opener.document.getElementById("phone2").value;
		var phone3 =  opener.document.getElementById("phone3").value;
		
		location.href="StampEventServlet?phone2="+phone2+"&phone3="+phone3;
	}	
</script>
</head>
<body>
<input type="hidden" id="phone2">
<input type="hidden" id="phone3">
</body>
</html>