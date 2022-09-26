package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.CategoryDAO;
import com.dto.CategoryDTO;

public class CategoryService {
	
	public List<CategoryDTO> categorySelectAll(){
		SqlSession session = MySQLSessionFactory.getSession();
		List<CategoryDTO> list = null;
		try {
			CategoryDAO dao = new CategoryDAO();
			list = dao.categorySelectAll(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public CategoryDTO selectCTNM(int ctno) {
		SqlSession session = MySQLSessionFactory.getSession();
		CategoryDTO dto = null;
		try {
			CategoryDAO dao = new CategoryDAO();
			dto = dao.selectCTNM(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
}
