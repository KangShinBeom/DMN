package com.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.dto.CategoryDTO;
import com.dto.OptionDTO;
import com.dto.ProductDTO;

@WebServlet("/OptionServlet")
public class OptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OptionServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pdnm = (String) request.getAttribute("pdnm");
		
		System.out.println("OptionServlet 로딩성공");
		System.out.println(pdnm);
		
		RequestDispatcher dis = request.getRequestDispatcher("Cart.jsp");
		dis.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
