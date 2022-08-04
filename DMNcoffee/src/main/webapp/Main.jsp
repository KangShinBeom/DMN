<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="en">
<head>
<meta charset="UTF-8">
<title>DMN</title>
<link rel="shortcut icon" type="image/x-icon" href="image/utility/버튼.png">

<link rel="stylesheet" href="css/Main.css"/>

<script>
	
	var index=0;
	window.onload = function() {
		slideShow();
	}
	
	function slideShow() {
		var x = document.getElementsByClassName("slide");
		for(var i = 0;i< x.length; i++){
			x[i].style.display="none";
		}
		index++;
		if(index > x.length){
			index = 1;
		}
		x[index-1].style.display="block";
		setTimeout(slideShow,3000);
	}

</script>
</head>
<body>
 <div>
	<img class="slide" src="image/background/메인 페이지1.png">
	<img class="slide" src="image/background/메인 페이지2.png">
	<img class="slide" src="image/background/메인 페이지3.png">
</div>
<form action="Main" method="get">
	<button class="btn1" name="takeout" value="매장"><img class="button1" src="image/utility/매장에서 먹어요.png"></button>
	<button class="btn2" name="takeout" value="포장"><img class="button2" src="image/utility/포장해서 갈래요.png"></button>
</form>
</body>
</html>