package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.CategoryDAO;
import com.dao.ProductDAO;
import com.dto.CategoryDTO;
import com.dto.ProductDTO;

public class CategoryService {
	
	public List<CategoryDTO> selectAll(){
		SqlSession session = MySqlSessionFactory.getSession();
		List<CategoryDTO> list = null;
		try {
			CategoryDAO cdao = new CategoryDAO();
			list = cdao.selectAll(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public CategoryDTO selectCTNM(int ctno) {
		SqlSession session = MySqlSessionFactory.getSession();
		CategoryDTO list = null;
		try {
			CategoryDAO cdao = new CategoryDAO();
			list = cdao.selectCTNM(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}
	
}
