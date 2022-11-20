package com.ojo.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.vo.AddressVO;

public class AddressDAO {
	private static AddressDAO instance = new AddressDAO();
	private AddressDAO() { }
	
	public static AddressDAO getInstance() {
		return instance;
	}

	public ArrayList<AddressVO> selectGu(SqlSession mapper) {
		System.out.println("AddressDAO클래스의 selectGu 메소드");
		return (ArrayList<AddressVO>) mapper.selectList("selectGu");
	}

	public ArrayList<AddressVO> selectDong(SqlSession mapper, String gu) {
		System.out.println("AddressDAO클래스의 selectDong 메소드");
		return (ArrayList<AddressVO>) mapper.selectList("selectDong", gu);
	}
	

}
