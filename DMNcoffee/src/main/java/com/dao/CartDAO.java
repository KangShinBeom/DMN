package com.dao;

import org.apache.ibatis.session.SqlSession;

import com.dto.CartDTO;

public class CartDAO {

	public int cartAdd(SqlSession session, CartDTO cadto) {
		int n = session.insert("CartMapper.cartAdd", cadto);
		return n;
	}

}
