package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dto.CartDTO;

public class CartDAO {

	public List<CartDTO> cartSelectAll(SqlSession session) {
		List<CartDTO> list = session.selectList("cartSelectAll");
		return list;
	}

	public void cartDelAll(SqlSession session) {
		session.delete("cartDelAll");
	}

	public void cartAdd(SqlSession session, CartDTO cdto) {
		session.insert("cartAdd",cdto);
	}

	public void cartDel(SqlSession session, int pdnum) {
		session.delete("cartDel",pdnum);
	}

	public void cartUpdate(SqlSession session, Map<String, Integer> cartInfo) {
		session.update("cartUpdate",cartInfo);
	}

	public CartDTO cartSelect(SqlSession session, int pdnum) {
		CartDTO dto = session.selectOne("cartSelect",pdnum);
		return dto;
	}

}
