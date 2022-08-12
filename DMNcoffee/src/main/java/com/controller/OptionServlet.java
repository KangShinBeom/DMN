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
import com.service.CategoryService;
import com.service.ProductService;

@WebServlet("/OptionServlet")
public class OptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OptionServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		ProductDTO pdto = (ProductDTO) session.getAttribute("pdto");
//		OptionDTO odto = (OptionDTO) session.getAttribute("odto");
		
		
		String pdnm = pdto.getPdnm();
		
		System.out.println(pdnm);
		
		response.sendRedirect("miniCart.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
