package com.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public MemberDTO selectMember(SqlSession session, Map<String, Object> phoneNum) {
		MemberDTO mdto = session.selectOne("selectMember",phoneNum);
		return mdto;
	}

	public void memberAdd(SqlSession session, MemberDTO mdto) {
		session.insert("memberAdd",mdto);
	}

	public void updateMember(SqlSession session, Map<String, Object> memberInfo) {
		session.update("updateMember",memberInfo);
	}

}
