package com.ojo.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.dao.AddressDAO;
import com.ojo.mybatis.MySession;
import com.ojo.vo.AddressVO;

public class AddressService {
	
	private static AddressService instance = new AddressService();
	private AddressService() { }
	
	public static AddressService getInstance() {
		return instance;
	}
	
	public ArrayList<AddressVO> selectGu() {
		System.out.println("AddressService클래스의 selectGu()메소드");
		SqlSession mapper = MySession.getSession();
		ArrayList<AddressVO> selectGu = AddressDAO.getInstance().selectGu(mapper);
		//System.out.println(selectGu);
		mapper.close();
		return selectGu;
	}

	public ArrayList<AddressVO> selectDong(String gu) {
		System.out.println("AddressService클래스의 selectDong()메소드");
		SqlSession mapper = MySession.getSession();
		ArrayList<AddressVO> selectDong = AddressDAO.getInstance().selectDong(mapper, gu);
		
		mapper.close();
		return selectDong;
	}

}
