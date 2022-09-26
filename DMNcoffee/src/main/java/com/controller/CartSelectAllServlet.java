package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CartDTO;
import com.service.CartService;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class CartSelectAllServlet
 */
@WebServlet("/CartSelectAllServlet")
public class CartSelectAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartSelectAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @return 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONObject jobj = new JSONObject();
		
		CartService service = new CartService();
		List<CartDTO> list = service.cartSelectAll();
		
		int size = list.size();
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("size", size);
		 
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
