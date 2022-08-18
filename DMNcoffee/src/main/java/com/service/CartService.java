package com.service;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.CartDAO;
import com.dto.CartDTO;

public class CartService {

	public int cartAdd(CartDTO cadto) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			CartDAO dao = new CartDAO();
			n = dao.cartAdd(session, cadto);
			session.commit();
		} finally {
			session.close();
		}
		return n;
	}// end cartAdd
	
	
	
	
}
