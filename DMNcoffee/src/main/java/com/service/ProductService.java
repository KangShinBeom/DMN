package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.ProductDAO;
import com.dto.ProductDTO;

public class ProductService {
	
	public List<ProductDTO> select(int ctno){
		ProductDAO pdao = new ProductDAO();
		SqlSession session = MySqlSessionFactory.getSession();
		List<ProductDTO> list = null;
		try {
			list = pdao.select(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}
	public ProductDTO selectPDNO(int pdno){
		SqlSession session = MySqlSessionFactory.getSession();
		ProductDTO list = null;
		try {
			ProductDAO pdao = new ProductDAO();
			list = pdao.selectPDNO(session,pdno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}
	
	
	
}
