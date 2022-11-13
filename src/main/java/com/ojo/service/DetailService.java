package com.ojo.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.dao.DetailDAO;
import com.ojo.mybatis.MySession;
import com.ojo.vo.PosttblVO;

public class DetailService {
	private static DetailService instance = new DetailService();
	private DetailService() { }
	
	public static DetailService getInstance() {
		return instance;
	}
	
	public PosttblVO selectByContent(int postnum) {
		System.out.println("DetailService클래스 selectBycontent()메소드");
		SqlSession mapper = MySession.getSession();
		PosttblVO vo = DetailDAO.getInstance().selectByContent(mapper, postnum);
		
		mapper.close();
		
		return vo;
		
	}

}
