package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CartDTO;
import com.dto.LogDTO;
import com.dto.MemberDTO;
import com.service.CartService;
import com.service.LogService;
import com.service.MemberService;

/**
 * Servlet implementation class StampCheckServlet
 */
@WebServlet("/StampCheckServlet")
public class StampCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StampCheckServlet() {
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
		mdto.setMempoint(mdto.getMempoint()-10);
		
		Map<String,Object> memberInfo = new HashMap<String,Object>();
		memberInfo.put("memno", mdto.getMemno());
		memberInfo.put("mempoint", mdto.getMempoint());
		memberInfo.put("stampcheck", "true");
		
		mservice.updateMember(memberInfo);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
		String date = sdf.format(Calendar.getInstance().getTime());

		LogService lservice = new LogService();
		lservice.logAdd(new LogDTO(phone2,phone3,date,"사용","-10"));
		
		CartService cservice = new CartService();
		List<CartDTO> list = cservice.cartSelectAll();
		
		request.setAttribute("list", list);
		
		RequestDispatcher dis = request.getRequestDispatcher("html/PaymentHistory_Member.jsp");
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
