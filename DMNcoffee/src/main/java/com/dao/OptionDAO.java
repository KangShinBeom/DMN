package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.OptionDTO;

public class OptionDAO {

	public List<OptionDTO> selectOPT(SqlSession session, int ctno) {
		List<OptionDTO> list = session.selectList("selectOPT",ctno);
		return list;
	}

	public List<OptionDTO> selectOPTFree(SqlSession session, int ctno) {
		List<OptionDTO> list = session.selectList("selectOPTFree",ctno);
		return list;
	}

	public List<OptionDTO> selectOPTPay(SqlSession session, int ctno) {
		List<OptionDTO> list = session.selectList("selectOPTPay",ctno);
		return list;
	}

}
