package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CategoryDTO;

public class CategoryDAO {

	public List<CategoryDTO> select(SqlSession session) {
		List<CategoryDTO> list = session.selectList("selectCTNM");
		return list;
	}

}
