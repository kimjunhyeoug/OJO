
package com.ojo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTest {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@OJO_medium?TNS_ADMIN=E:/07.Team/OJO_Team/Wallet_OJO";
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
	public static void main(String[] args) {
		DBTest dbTest = new DBTest();
		dbTest.getConnection();
		
				
	}
}
