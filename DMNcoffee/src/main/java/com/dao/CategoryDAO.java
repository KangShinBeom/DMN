package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CategoryDTO;
import com.dto.ProductDTO;

public class CategoryDAO {

	public List<CategoryDTO> selectAll(SqlSession session) {
		List<CategoryDTO> list = session.selectList("selectAll");
		return list;
	}

	public CategoryDTO selectCTNM(SqlSession session, int ctno) {
		CategoryDTO list = session.selectOne("selectCTNM",ctno);
		return list;
	}

}
