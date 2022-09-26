package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CategoryDTO;

public class CategoryDAO {

	public List<CategoryDTO> categorySelectAll(SqlSession session) {
		List<CategoryDTO> list = session.selectList("categorySelectAll");
		return list;
	}

	public CategoryDTO selectCTNM(SqlSession session, int ctno) {
		CategoryDTO dto = session.selectOne("selectCTNM",ctno);
		return dto;
	}

}
