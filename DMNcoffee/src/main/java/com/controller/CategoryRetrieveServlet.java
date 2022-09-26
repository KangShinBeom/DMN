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
import com.dto.ProductDTO;
import com.service.CategoryService;
import com.service.ProductService;

/**
 * Servlet implementation class CategoryRetrieveServlet
 */
@WebServlet("/CategoryRetrieveServlet")
public class CategoryRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryRetrieveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ctno = Integer.parseInt(request.getParameter("ctno"));
		
		ProductService pservice = new ProductService();
		List<ProductDTO> plist = pservice.selectCTNO(ctno);
		
		CategoryService cservice = new CategoryService();
		CategoryDTO cdto = cservice.selectCTNM(ctno);
		
		request.setAttribute("ProductList",plist);
		request.setAttribute("CategoryInfo",cdto);
		
		RequestDispatcher dis = request.getRequestDispatcher("html/MenuBoard.jsp");
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
