package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.OptionDAO;
import com.dto.OptionDTO;

public class OptionService {

	public List<OptionDTO> selectOPT(int ctno) {
		SqlSession session = MySqlSessionFactory.getSession();
		List<OptionDTO> list = null;
		try {
			OptionDAO odao = new OptionDAO();
			list = odao.selectOPT(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}


}
