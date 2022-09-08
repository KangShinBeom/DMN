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

	public int cartAllDel(SqlSession session, List<CartDTO> list) {
		int n = session.delete("cartAllDel", list);
		return n;
	}

	public int Plus(SqlSession session, int num) {
		int n = session.update("Plus", num);
		return n;
	}

	public int cartDel(SqlSession session, int num) {
		int n = session.delete("cartDel", num);
		return n;
	}


}
