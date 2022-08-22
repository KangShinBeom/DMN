package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CartDTO;
import com.dto.OptionDTO;
import com.dto.ProductDTO;

public class CartDAO {

	public int cartAdd(SqlSession session, CartDTO cdto) {
		int n = session.insert("cartAdd", cdto);
		   return n;
	}

	public List<CartDTO> cartList(SqlSession session) {
		List<CartDTO> list = session.selectList("cartList");
		return list;
	}


}
