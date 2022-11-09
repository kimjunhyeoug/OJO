package com.ojo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTest {

	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@ojo_high?TNS_ADMIN=C:/Users/jack0/eclipse-workspace/OJO/src/main/java/com/ojo/mybatis/Wallet_OJO";
			String user = "ADMIN";
			String password = "Ojo123456789";
			con = DriverManager.getConnection(url, user, password);
			System.out.println("DB연결 성공!!");

		} catch (ClassNotFoundException e) {
			System.out.println("클래스 연결 실패!");
		} catch (SQLException e) {
			System.out.println("연결 실패!");
		}
		return con;

	}
}
