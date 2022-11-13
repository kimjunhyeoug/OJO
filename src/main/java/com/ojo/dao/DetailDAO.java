package com.ojo.dao;

import org.apache.ibatis.session.SqlSession;

import com.ojo.vo.PosttblVO;

public class DetailDAO {
	private static DetailDAO instance = new DetailDAO();
	private DetailDAO() { }
	
	public static DetailDAO getInstance() {
		return instance;
	}

	public PosttblVO selectByContent(SqlSession mapper, int postnum) {
		System.out.println("DetailDAO 클래스의 selectByContent()메소드");
		return (PosttblVO) mapper.selectOne("selectByContent", postnum) ;
	}

}
