package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.OrderInfoDTO;

public class OrderInfoDAO {

	public List<OrderInfoDTO> selectOrderAll(SqlSession session) {
		List<OrderInfoDTO> list = session.selectList("selectOrderAll");
		return list;
	}

	public void orderAdd(SqlSession session, OrderInfoDTO dto) {
		session.insert("orderAdd",dto);
	}

	public List<OrderInfoDTO> selectOrderSeq(SqlSession session, int orderseq) {
		List<OrderInfoDTO> list = session.selectList("selectOrderSeq",orderseq);
		return list;
	}
	
	
	
}
