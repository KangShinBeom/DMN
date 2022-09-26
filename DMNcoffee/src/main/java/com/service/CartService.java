package com.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.CartDAO;
import com.dto.CartDTO;

public class CartService {

	public List<CartDTO> cartSelectAll() {
		SqlSession session = MySQLSessionFactory.getSession();
		List<CartDTO> list = null;
		try {
			CartDAO dao = new CartDAO();
			list = dao.cartSelectAll(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public void cartDelAll() {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			CartDAO dao = new CartDAO();
			dao.cartDelAll(session);
			session.commit();
		}finally {
			session.close();
		}
	}

	public void cartAdd(CartDTO cdto) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			CartDAO dao = new CartDAO();
			dao.cartAdd(session,cdto);
			session.commit();
		}finally {
			session.close();
		}
	}

	public void cartDel(int pdnum) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			CartDAO dao = new CartDAO();
			dao.cartDel(session,pdnum);
			session.commit();
		}finally {
			session.close();
		}
	}

	public void cartUpdate(Map<String, Integer> cartInfo) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			CartDAO dao = new CartDAO();
			dao.cartUpdate(session,cartInfo);
			session.commit();
		}finally {
			session.close();
		}
		
	}

	public CartDTO cartSelect(int pdnum) {
		SqlSession session = MySQLSessionFactory.getSession();
		CartDTO dto = null;
		try {
			CartDAO dao = new CartDAO();
			dto = dao.cartSelect(session,pdnum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}

	
	
	
}
