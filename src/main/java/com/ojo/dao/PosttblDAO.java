package com.ojo.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.ojo.vo.PostimageVO;
import com.ojo.vo.PosttblVO;

public class PosttblDAO {

	private static PosttblDAO instance = new PosttblDAO();

	private PosttblDAO() {
	}

	public static PosttblDAO getInstance() {
		return instance;
	}

	public ArrayList<PostimageVO> selectByImages(SqlSession mapper, int postnum) {
		System.out.println("PosttblDAO클래스 selectByImages()메소드");

		return (ArrayList<PostimageVO>) mapper.selectList("selectByImages", postnum);
	}

	public void upload(SqlSession mapper, PosttblVO vo) {
		System.out.println("PostimageDAO클래스 upload()메소드");

		mapper.insert("upload", vo);

	}

	public void uploadImage(SqlSession mapper, PostimageVO io) {
		System.out.println("PostimageDAO클래스 uploadImage()메소드");
		mapper.insert("uploadImage", io);

	}
}
