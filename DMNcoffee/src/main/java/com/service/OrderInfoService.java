package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.LogDAO;
import com.dao.OrderInfoDAO;
import com.dao.ProductDAO;
import com.dto.OrderInfoDTO;
import com.dto.ProductDTO;

public class OrderInfoService {

	public List<OrderInfoDTO> selectOrderAll() {
		SqlSession session = MySQLSessionFactory.getSession();
		List<OrderInfoDTO> list = null;
		try {
			OrderInfoDAO dao = new OrderInfoDAO();
			list = dao.selectOrderAll(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public void orderAdd(OrderInfoDTO dto) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			OrderInfoDAO dao = new OrderInfoDAO();
			dao.orderAdd(session,dto);
			session.commit();
		}finally {
			session.close();
		}
	}

	public List<OrderInfoDTO> selectOrderSeq(int orderseq) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<OrderInfoDTO> list = null;
		try {
			OrderInfoDAO dao = new OrderInfoDAO();
			list = dao.selectOrderSeq(session,orderseq);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public String selectOrderLastDate() {
		SqlSession session = MySQLSessionFactory.getSession();
		String lastDate = null;
		try {
			OrderInfoDAO dao = new OrderInfoDAO();
			lastDate = dao.selectOrderLastDate(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return lastDate;
	}

	public List<OrderInfoDTO> selectOrderDate(String date) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<OrderInfoDTO> list = null;
		try {
			OrderInfoDAO dao = new OrderInfoDAO();
			list = dao.selectOrderDate(session,date);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}
	
	
	
}
