package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
		
		int pdno = Integer.parseInt(request.getParameter("pdno"));
		String opt2 = request.getParameter("opt2");
		
		System.out.println(pdno);
		System.out.println(opt2);
 		/*
		 * System.out.println(pdno);
		 * 
		 * ProductService pservice = new ProductService(); ProductDTO pdto =
		 * pservice.selectPDNO(pdno); System.out.println(pdto.getPdnm());
		 * 
		 * 
		 * int ctno = pdto.getCtno(); CategoryService cservice = new CategoryService();
		 * CategoryDTO cdto1 = cservice.selectCTNM(ctno);
		 * 
		 * String[] opt1 = request.getParameterValues("result"); String[] opt2 =
		 * request.getParameterValues("result2");
		 * 
		 * 
		 * System.out.println(opt1); System.out.println(opt2);
		 */
//		request.setAttribute("ProductOption", pdto1);
//		request.setAttribute("CategoryOption", cdto1);
//		request.setAttribute("Option", odto);
	 
		
		
		PrintWriter out = response.getWriter(); //선언
		   
		   String str="";
		   str = "<script language='javascript'>";
		   str += "opener.window.location.reload();";  //오프너 새로고침
		   str += "self.close();";   // 창닫기
		    str += "</script>";
		   out.print(str);
		
//		   RequestDispatcher dis2 = request.getRequestDispatcher("miniCart.jsp");
//			dis2.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
