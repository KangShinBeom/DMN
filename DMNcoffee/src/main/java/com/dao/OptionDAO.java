package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.OptionDTO;

public class OptionDAO {

	public List<OptionDTO> selectOPT(SqlSession session, int ctno) {
		List<OptionDTO> list = session.selectOne("selectOPT",ctno);
		return list;
	}

}
