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

import com.dto.CategoryDTO;
import com.dto.OptionDTO;
import com.dto.ProductDTO;
import com.service.CategoryService;
import com.service.OptionService;
import com.service.ProductService;

/**
 * Servlet implementation class Option
 */
@WebServlet("/ProductRetrieveServlet")
public class ProductRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductRetrieveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		int pdno = Integer.parseInt(request.getParameter("pdno"));
		ProductService pservice = new ProductService();
		ProductDTO pdto = pservice.selectPDNO(pdno);
		
		int ctno = pdto.getCtno();
		CategoryService cservice = new CategoryService();
		CategoryDTO cdto = cservice.selectCTNM(ctno);
		
//		int optno = Integer.parseInt(request.getParameter("optno"));
//		OptionService oservice = new OptionService();
//		List<OptionDTO> odto = oservice.selectOPT(ctno);
		
		
		session.setAttribute("ProductRetrieve", pdto);
		session.setAttribute("CategoryRetrieve", cdto);
//		request.setAttribute("Option", odto);
	 
		RequestDispatcher dis = request.getRequestDispatcher("ProductRetrieve.jsp");
		dis.forward(request, response);
																																							}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
