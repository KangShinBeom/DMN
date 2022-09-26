package com.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.LogDAO;
import com.dto.LogDTO;

public class LogService {

	public void logAdd(LogDTO dto) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			LogDAO dao = new LogDAO();
			dao.logAdd(session,dto);
			session.commit();
		}finally {
			session.close();
		}
	}

	public List<LogDTO> selectLog(Map<String, Object> phoneNum) {
		SqlSession session = MySQLSessionFactory.getSession();
		List<LogDTO> list = null;
		try {
			LogDAO dao = new LogDAO();
			list = dao.selectLog(session,phoneNum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

}
