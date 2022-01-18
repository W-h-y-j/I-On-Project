package com.service.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;





public class JdbcConnection {
	
	private static final Logger logger=LoggerFactory.getLogger(JdbcConnection.class);//로그로 디비 접속 확인할려구
	private static final String DRIVER="oracle.jdbc.driver.OracleDriver";
	private static final String URL="jdbc:oracle:thin:@ionprojectdb_medium?TNS_ADMIN=C://DBC/Wallet_IONPROJECTDB/";
	private static final String USER="ADMIN";
	private static final String PW="Test123123!@#";
	
	public static Connection getConnection() {
		
		Connection con = null;
		//드라이버 로드한거고
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		//url,id,pw입력해서 들어간거임
		try {
			con = DriverManager.getConnection(URL, USER, PW);
			logger.info("오라클 연동 완료");
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
