package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.OptionDAO;
import com.dto.OptionDTO;

public class OptionService {

	public List<OptionDTO> selectOPT(int ctno) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<OptionDTO> list = null;
		try {
			OptionDAO dao = new OptionDAO();
			list = dao.selectOPT(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public List<OptionDTO> selectOPTFree(int ctno) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<OptionDTO> list = null;
		try {
			OptionDAO dao = new OptionDAO();
			list = dao.selectOPTFree(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	public List<OptionDTO> selectOPTPay(int ctno) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<OptionDTO> list = null;
		try {
			OptionDAO dao = new OptionDAO();
			list = dao.selectOPTPay(session,ctno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

}
