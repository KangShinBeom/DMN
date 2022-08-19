package com.service;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.CartDAO;
import com.dao.CategoryDAO;
import com.dao.ProductDAO;
import com.dto.CartDTO;
import com.dto.CategoryDTO;
import com.dto.ProductDTO;

public class CartService {

	public int cartAdd(CartDTO cdto) {
		SqlSession session = MySqlSessionFactory.getSession();
		  int n = 0;
		  try {
			  CartDAO dao = new CartDAO();
			  n = dao.cartAdd(session, cdto);
			  session.commit();
		  }finally {
			session.close();
		}
		  return n;
	}
	
	
	
}
