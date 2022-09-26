package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CategoryDTO;
import com.dto.OptionDTO;
import com.dto.ProductDTO;
import com.service.CategoryService;
import com.service.OptionService;
import com.service.ProductService;

/**
 * Servlet implementation class ProductRetrieveServlet
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
		
		int pdno = Integer.parseInt(request.getParameter("pdno"));
		
		ProductService pservice = new ProductService();
		ProductDTO pdto = pservice.selectPDNO(pdno);
		
		CategoryService cservice = new CategoryService();
		CategoryDTO cdto = cservice.selectCTNM(pdto.getCtno());
		
		OptionService oservice = new OptionService();
		
		List<OptionDTO> freelist = oservice.selectOPTFree(pdto.getCtno());
		List<OptionDTO> paylist = oservice.selectOPTPay(pdto.getCtno());
		
		request.setAttribute("ProductRetrieve", pdto);
		request.setAttribute("CategoryRetrieve", cdto);
		request.setAttribute("freelist", freelist);
		request.setAttribute("paylist", paylist);
		
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
