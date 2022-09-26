package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CartDTO;
import com.dto.ProductDTO;
import com.service.CartService;
import com.service.ProductService;

/**
 * Servlet implementation class OptionServlet
 */
@WebServlet("/OptionServlet")
public class OptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pdno = request.getParameter("pdno");
		String opt = request.getParameter("opt");
		String oprice = request.getParameter("oprice");
		
		int total = 0;
		
		if(oprice != null) {
			String[] p = oprice.split(" ");
			for(int i=0; i< p.length;i++) {
				total += Integer.parseInt(p[i]);
			}
		}
		
		ProductService pservice = new ProductService();
		ProductDTO pdto = pservice.selectPDNO(Integer.parseInt(pdno));
		
		String pdnm = pdto.getPdnm();
		int amount = 1;
		int totalprice = pdto.getPdprice() + total;
		String ctnm = pdto.getCtnm();
		
		CartDTO cdto = new CartDTO(pdno,pdnm,amount,totalprice,opt,ctnm);
		
		CartService cservice = new CartService();
		
		cservice.cartAdd(cdto);
		
		List<CartDTO> list = cservice.cartSelectAll();
		
		request.setAttribute("CartList", list);
		
		RequestDispatcher dis = request.getRequestDispatcher("html/Cart.jsp");
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
