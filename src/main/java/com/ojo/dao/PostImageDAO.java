package com.ojo.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.vo.PostimageVO;

public class PostImageDAO {
	
	private static PostImageDAO instance = new PostImageDAO();
	private PostImageDAO() { }
	
	public static PostImageDAO getInstance() {
		return instance;
	}


	public ArrayList<PostimageVO> selectByImages(SqlSession mapper, int postnum) {
		System.out.println("PostimageDAO클래스 selectByImages()메소드");
		
		return (ArrayList<PostimageVO>) mapper.selectList("selectByImages", postnum);
	}

}
