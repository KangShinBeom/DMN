<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.service.CategoryService"%>
<%@page import="com.dto.CategoryDTO"%>
<%@page import="java.util.List"%>
<%
	CategoryService cservice = new CategoryService();
	List<CategoryDTO> ctnm = cservice.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="category">
		<tr>
			<td><button id="btn2"><%= ctnm.get(5).getCtnm() %></button></td>
			<td><button id="btn3"><%= ctnm.get(4).getCtnm() %></button></td>
			<td><button id="btn4"><%= ctnm.get(3).getCtnm() %></button></td>
		</tr>
		<tr>
			<td><button id="btn5"><%= ctnm.get(2).getCtnm() %></button></td>
			<td><button id="btn6"><%= ctnm.get(1).getCtnm() %></button></td>
			<td><button id="btn7"><%= ctnm.get(0).getCtnm() %></button></td>
		</tr>
	</table>
</body>
</html>