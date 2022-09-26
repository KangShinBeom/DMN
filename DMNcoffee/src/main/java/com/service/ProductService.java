package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.ProductDAO;
import com.dto.ProductDTO;

public class ProductService {
	
	public List<ProductDTO> productSelectAll(int ctno){
		SqlSession session = MySQLSessionFactory.getSession();
		List<ProductDTO> list = null;
		try {
			ProductDAO dao = new ProductDAO();
			list = dao.productSelectAll(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public List<ProductDTO> selectCTNO(int ctno) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<ProductDTO> list = null;
		try {
			ProductDAO dao = new ProductDAO();
			list = dao.selectCTNO(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public ProductDTO selectPDNO(int pdno) {
		SqlSession session = MySQLSessionFactory.getSession();
		ProductDTO dto = null;
		try {
			ProductDAO dao = new ProductDAO();
			dto = dao.selectPDNO(session,pdno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
}
