package com.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.config.MySQLSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {

	public MemberDTO selectMember(Map<String, Object> phoneNum) {
		SqlSession session = MySQLSessionFactory.getSession();
		MemberDTO mdto = null;
		try {
			MemberDAO dao = new MemberDAO();
			mdto = dao.selectMember(session,phoneNum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return mdto;
	}

	public void memberAdd(MemberDTO mdto) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			MemberDAO dao = new MemberDAO();
			dao.memberAdd(session,mdto);
			session.commit();
		}finally {
			session.close();
		}
	}

	public void updateMember(Map<String, Object> memberInfo) {
		SqlSession session = MySQLSessionFactory.getSession();
		try {
			MemberDAO dao = new MemberDAO();
			dao.updateMember(session,memberInfo);
			session.commit();
		}finally {
			session.close();
		}
	}

}
