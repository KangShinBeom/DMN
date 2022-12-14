package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.CartDTO;
import com.dto.LogDTO;
import com.dto.MemberDTO;
import com.dto.OrderInfoDTO;
import com.service.CartService;
import com.service.LogService;
import com.service.MemberService;
import com.service.OrderInfoService;

/**
 * Servlet implementation class OrderConfirmationServlet
 */
@WebServlet("/OrderConfirmationServlet")
public class OrderConfirmationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderConfirmationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String ordertakeout = (String)session.getAttribute("ordertakeout");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		String url = "OrderConfirmation.jsp";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String date = sdf.format(Calendar.getInstance().getTime());
		
		CartService cservice =  new CartService();
		List<CartDTO> cartlist = cservice.cartSelectAll();
		
		int totalamount = 0;
		
		for(int i=0;i<cartlist.size();i++) {
			CartDTO dto = cartlist.get(i);
			int amount = dto.getAmount();
			totalamount += amount;
		}
		
		if(phone2 != null && phone3 != null) {//??????????????? ??????????????????
			url = "OrderConfirmation_Member.jsp";
			
			MemberService mservice = new MemberService();
			MemberDTO mdto = new MemberDTO();
			
			LogService lservice = new LogService();
			
			Map<String,Object> phoneNum = new HashMap<String,Object>();
			phoneNum.put("phone2",phone2);
			phoneNum.put("phone3",phone3);
			
			Map<String,Object> memberInfo = new HashMap<String,Object>();
			
			mdto = mservice.selectMember(phoneNum);
			
			lservice.logAdd(new LogDTO(phone2,phone3,date,"??????",String.valueOf(totalamount)));//?????? ?????? ?????? 
			
			if(mdto.getStampcheck().equals("false")) {//?????? ????????????
				memberInfo.put("memno", mdto.getMemno());
				memberInfo.put("mempoint", mdto.getMempoint()+totalamount);
				memberInfo.put("stampcheck", "false");
				
				mservice.updateMember(memberInfo);
				mdto = mservice.selectMember(phoneNum);
				
				request.setAttribute("mdto", mdto);
			}else{//?????? ???????????????
				memberInfo.put("memno", mdto.getMemno());
				memberInfo.put("mempoint", mdto.getMempoint()+totalamount-1);
				memberInfo.put("stampcheck", "true");
				
				mservice.updateMember(memberInfo);
				
				mdto = mservice.selectMember(phoneNum);
				
				request.setAttribute("mdto", mdto);
				
				memberInfo.put("memno", mdto.getMemno());
				memberInfo.put("mempoint", mdto.getMempoint());
				memberInfo.put("stampcheck", "false");
				
				mservice.updateMember(memberInfo);
			}//else
		}//??????????????? ??????????????????
		
		cartlist = cservice.cartSelectAll();
		
		OrderInfoService oservice = new OrderInfoService();
		List<OrderInfoDTO> orderlist = oservice.selectOrderAll();
		
		int orderseq = 0;
		
		if(orderlist.size() == 0) {//?????? ?????????????????? 1????????? ????????????
			
			orderseq = 1;
			
			for(int i=0;i<cartlist.size();i++) {
				CartDTO dto = cartlist.get(i);
				int pdnum = dto.getPdnum();
				String pdnm = dto.getPdnm();
				String opt = dto.getOpt();
				int amount = dto.getAmount();
				int price = dto.getTotalprice();
				String complete_yn = "N";
				
				oservice.orderAdd(new OrderInfoDTO(date,orderseq,pdnum,pdnm,opt,amount,price,ordertakeout,complete_yn));
			}
		}else {//???????????? ???
			String lastDate = oservice.selectOrderLastDate();
			
			if(lastDate.equals(date)) {//????????? ?????????
				
				List<OrderInfoDTO> orderlistSameDate = oservice.selectOrderDate(date);
				
				int[] arr = new int[orderlistSameDate.size()];
				int max = arr[0];
				
				for(int i=0;i<orderlistSameDate.size();i++) {
					arr[i] = orderlistSameDate.get(i).getOrderseq();
					for(int j=0;j<orderlistSameDate.size();j++) {
						if(arr[i] > max) {
							max = arr[i];
						}
					}
				}
				
				orderseq = max+1;
				
				for(int i=0;i<cartlist.size();i++) {
					CartDTO cdto = cartlist.get(i);
					int pdnum = cdto.getPdnum();
					String pdnm = cdto.getPdnm();
					String opt = cdto.getOpt();
					int amount = cdto.getAmount();
					int price = cdto.getTotalprice();
					String complete_yn = "N";
					
					oservice.orderAdd(new OrderInfoDTO(date,orderseq,pdnum,pdnm,opt,amount,price,ordertakeout,complete_yn));
				}
			}else {//????????? ?????????
				orderseq =1;
				
				for(int i=0;i<cartlist.size();i++) {
					CartDTO dto = cartlist.get(i);
					int pdnum = dto.getPdnum();
					String pdnm = dto.getPdnm();
					String opt = dto.getOpt();
					int amount = dto.getAmount();
					int price = dto.getTotalprice();
					String complete_yn = "N";
					
					oservice.orderAdd(new OrderInfoDTO(date,orderseq,pdnum,pdnm,opt,amount,price,ordertakeout,complete_yn));
				}
			}
		}
		
		cservice.cartDelAll();
		
		List<OrderInfoDTO> list = oservice.selectOrderSeq(orderseq);
		
		SimpleDateFormat stime = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss",Locale.KOREA);
		String time = stime.format(Calendar.getInstance().getTime());
		
		request.setAttribute("list", list);
		request.setAttribute("time", time);
		
		RequestDispatcher dis = request.getRequestDispatcher(url);
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
