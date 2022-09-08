package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.CartDAO;
import com.dao.CategoryDAO;
import com.dao.OptionDAO;
import com.dao.ProductDAO;
import com.dto.CartDTO;
import com.dto.CategoryDTO;
import com.dto.OptionDTO;
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
	
	public List<CartDTO> cartList() {
		SqlSession session = MySqlSessionFactory.getSession();
		List<CartDTO> list = null;
		try {
			CartDAO dao = new CartDAO();
			list = dao.cartList(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public int cartAllDel(List<CartDTO> list) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			CartDAO dao = new CartDAO();
			n = dao.cartAllDel(session, list);
			session.commit();
		} finally {
			session.close();
		}
		return n;
	}

	public int Plus(int num) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			CartDAO dao = new CartDAO();
			n = dao.Plus(session, num);
			session.commit();
		} finally {
			session.close();
		}
		return n;
	}

	public int cartDel(int num) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			CartDAO dao = new CartDAO();
			n = dao.cartDel(session, num);
			session.commit();
		} finally {
			session.close();
		}
		return n;
	}

	

	

	
	
}
