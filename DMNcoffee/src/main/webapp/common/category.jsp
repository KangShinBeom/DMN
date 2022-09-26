<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.service.*"%>
<%@page import="com.dto.*"%>
<%@page import="java.util.List"%>
<%
	CategoryService cservice = new CategoryService();
	List<CategoryDTO> cdto = cservice.categorySelectAll();
%>
<table class="category">
	<tr>
		<td><button class="categoryBTN" data-xxx="<%= cdto.get(5).getCtno() %>"><%= cdto.get(5).getCtnm() %></button></td>
		<td><button class="categoryBTN" data-xxx="<%= cdto.get(4).getCtno() %>"><%= cdto.get(4).getCtnm() %></button></td>
		<td><button class="categoryBTN" data-xxx="<%= cdto.get(3).getCtno() %>"><%= cdto.get(3).getCtnm() %></button></td>
	</tr>
	<tr>
		<td><button class="categoryBTN" data-xxx="<%= cdto.get(2).getCtno() %>"><%= cdto.get(2).getCtnm() %></button></td>
		<td><button class="categoryBTN" data-xxx="<%= cdto.get(1).getCtno() %>"><%= cdto.get(1).getCtnm() %></button></td>
		<td><button class="categoryBTN" data-xxx="<%= cdto.get(0).getCtno() %>"><%= cdto.get(0).getCtnm() %></button></td>
	</tr>
</table>
<input type="hidden" id="ctno">
