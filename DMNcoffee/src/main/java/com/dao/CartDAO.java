package com.dao;

import org.apache.ibatis.session.SqlSession;

import com.dto.CartDTO;
import com.dto.ProductDTO;

public class CartDAO {

	public int cartAdd(SqlSession session, CartDTO cdto) {
		int n = session.insert("cartAdd", cdto);
		   return n;
	}


}
