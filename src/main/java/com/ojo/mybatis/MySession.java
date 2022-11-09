package com.ojo.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MySession {
	static SqlSessionFactory factory; 
	static {
		Reader r = null;
		try {
			r = Resources.getResourceAsReader("com/ojo/mybatis/SqlConfig.xml");
			SqlSessionFactoryBuilder build = new SqlSessionFactoryBuilder();
			factory = build.build(r);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// SqlSession 객체 얻기
	public static SqlSession getSession(){
		return factory.openSession();
	}
}










