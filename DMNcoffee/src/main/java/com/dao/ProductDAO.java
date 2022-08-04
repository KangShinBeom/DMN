package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CategoryDTO;
import com.dto.ProductDTO;

public class ProductDAO {

	public List<ProductDTO> select(SqlSession session,int ctno) {
		List<ProductDTO> list = session.selectList("select",ctno);
		return list;
	}
	public ProductDTO selectPDNO(SqlSession session,int pdno) {
		ProductDTO list = session.selectOne("selectPDNO",pdno);
		return list;
	}
}
