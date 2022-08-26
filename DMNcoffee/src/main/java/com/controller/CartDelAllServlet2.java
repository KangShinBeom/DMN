package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CartDTO;
import com.service.CartService;

@WebServlet("/CartDelAllServlet")
public class CartDelAllServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartDelAllServlet2() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CartService cservice = new CartService();
		List<CartDTO> list = cservice.cartList();
		
		
		int n = cservice.cartAllDel(list);
		System.out.println("삭제된 카트 갯수 = " + n);
		
//		response.sendRedirect("Menu.jsp");
		
		PrintWriter out = response.getWriter(); //선언
		   
		   String str="";
		   str = "<script language='javascript'>";
		   str += "location.href='Main.jsp'";  //오프너 새로고침
		    str += "</script>";
		   out.print(str);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
