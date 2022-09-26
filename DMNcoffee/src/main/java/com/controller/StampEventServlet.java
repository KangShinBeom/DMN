package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class StampEventServlet
 */
@WebServlet("/StampEventServlet")
public class StampEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StampEventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		Map<String,Object> phoneNum = new HashMap<String,Object>();
		phoneNum.put("phone2",phone2);
		phoneNum.put("phone3",phone3);
		
		MemberService mservice = new MemberService();
		MemberDTO mdto = mservice.selectMember(phoneNum);
		
		request.setAttribute("memberInfo",mdto);
		
		RequestDispatcher dis = request.getRequestDispatcher("StampCheck.jsp");
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
