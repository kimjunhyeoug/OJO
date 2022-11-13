package com.ojo.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.dao.PostImageDAO;
import com.ojo.mybatis.MySession;
import com.ojo.vo.PostimageVO;

public class PostImageService {
	
	private static PostImageService instance = new PostImageService();
	
	private PostImageService() { }
	
	public static PostImageService getInstance() {
		return instance;
	}
	
	public ArrayList<PostimageVO> selectByImages(int postnum) {
		System.out.println("PostimageSErvice클래스 selectByImages()메소드");
		SqlSession mapper = MySession.getSession();
		
		ArrayList<PostimageVO> list = PostImageDAO.getInstance().selectByImages(mapper, postnum);
		
		mapper.close();
		
		return list;
	}
	

}
