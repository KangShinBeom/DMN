package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.OptionDTO;
import com.dto.ProductDTO;

public class ProductDAO {

	public List<ProductDTO> productSelectAll(SqlSession session, int ctno) {
		List<ProductDTO> list = session.selectList("productSelectAll",ctno);
		return list;
	}

	public List<ProductDTO> selectCTNO(SqlSession session, int ctno) {
		List<ProductDTO> list = session.selectList("selectCTNO",ctno);
		return list;
	}

	public ProductDTO selectPDNO(SqlSession session, int pdno) {
		ProductDTO dto = session.selectOne("selectPDNO",pdno);
		return dto;
	}

}
