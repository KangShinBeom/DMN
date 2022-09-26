package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dto.LogDTO;

public class LogDAO {

	public void logAdd(SqlSession session, LogDTO dto) {
		session.insert("logAdd",dto);
	}

	public List<LogDTO> selectLog(SqlSession session, Map<String, Object> phoneNum) {
		List<LogDTO> list = session.selectList("selectLog",phoneNum);
		return list;
	}

}
