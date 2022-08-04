package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.CategoryDAO;
import com.dto.CategoryDTO;

public class CategoryService {
	
	public List<CategoryDTO> select(){
		CategoryDAO cdao = new CategoryDAO();
		SqlSession session = MySqlSessionFactory.getSession();
		List<CategoryDTO> list = null;
		try {
			list = cdao.select(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}
	
}
