package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CartDTO;
import com.service.CartService;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class CartUpdateServlet
 */
@WebServlet("/CartUpdateServlet")
public class CartUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pdnum = Integer.parseInt(request.getParameter("pdnum"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		String status = (String)request.getParameter("status");
		
		CartService service = new CartService();
		CartDTO dto = new CartDTO();
		dto = service.cartSelect(pdnum);
		
		int totalprice=0;
		
		if(status.equals("plus")) {
			 totalprice = (dto.getTotalprice() / (amount-1)) * amount;
		}else {
			 totalprice = (dto.getTotalprice() / (amount+1)) * amount ;
		}
		
		Map<String,Integer> cartInfo = new HashMap<String,Integer>();
		cartInfo.put("pdnum", pdnum);
		cartInfo.put("amount",amount);
		cartInfo.put("totalprice",totalprice);
		
		service.cartUpdate(cartInfo);
		
		dto = service.cartSelect(pdnum);
		amount = dto.getAmount();
		totalprice = dto.getTotalprice();
		
		JSONObject jobj = new JSONObject();
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("amount",amount);
		map.put("totalprice",totalprice);
		
		jobj.put("map", map);
		
		response.setContentType("application/x-json; charset=utf-8");
		response.getWriter().print(jobj); // 전송이 되는 부분
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
