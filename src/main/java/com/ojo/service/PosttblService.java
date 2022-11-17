package com.ojo.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.dao.PosttblDAO;
import com.ojo.mybatis.MySession;
import com.ojo.vo.CategoryVO;
import com.ojo.vo.PostimageVO;
import com.ojo.vo.PosttblVO;

public class PosttblService {
	
	private static PosttblService instance = new PosttblService();
	
	private PosttblService() { }
	
	public static PosttblService getInstance() {
		return instance;
	}
	
	public ArrayList<PostimageVO> selectByImages(int postnum) {
		System.out.println("PostimageSErvice클래스 selectByImages()메소드");
		SqlSession mapper = MySession.getSession();
		
		ArrayList<PostimageVO> list = PosttblDAO.getInstance().selectByImages(mapper, postnum);
			
		mapper.close();
		System.out.println(list);
		
		
		return list;
	}
	
	public void upload(PosttblVO vo) {
		System.out.println("PosttblService클래스 upload()메소드");
		SqlSession mapper = MySession.getSession();
		
		PosttblDAO.getInstance().upload(mapper,vo);
		
		mapper.commit();
		mapper.close();
		
	}
	
	public void uploadImage(PostimageVO io) {
		System.out.println("PosttblService클래스 uploadImage()메소드");
		SqlSession mapper = MySession.getSession();
		
		PosttblDAO.getInstance().uploadImage(mapper, io);
		
		mapper.commit();
		mapper.close();
		
	}
	
	public ArrayList<CategoryVO> selectByCategory() {
		System.out.println("PosttblService클래스 selectByCategory()메소드");
		SqlSession mapper = MySession.getSession();
		ArrayList<CategoryVO> list = PosttblDAO.getInstance().selectByCategory(mapper);
		System.out.println(list);
		mapper.close();
		System.out.println(list);
		
		return list;
	}

}
