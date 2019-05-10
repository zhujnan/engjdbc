package com.demo.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 * 数据库连接工具类：
 * 			用于封装数据库的属性文件 
 * 			获得连接
 * 			关闭连接
 * @author Administrator
 *
 */
public class ConnectionUtil {
		private static String url;
		private static String driver;
		private static String username;
		private static String password;
		static{
			Properties props = new Properties();
			try {
				props.load(ConnectionUtil.class
								.getClassLoader()
								.getResourceAsStream("jdbc.properties"));
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(props!=null){
				url = props.getProperty("url");
				driver = props.getProperty("driver");
				username = props.getProperty("name");
				password = props.getProperty("pwd");
				try {
					Class.forName(driver);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}//通过反射动态加载驱动对象
			}
		}
		public static Connection openConnection() 
					throws SQLException{
			return DriverManager.getConnection(url,username,password);
		}
		public static void closeConnection(Connection con){
			//关闭连接
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		public static void closeStatements(Statement stmt){
			if(stmt!=null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		public static void closeResultSet(ResultSet rst){
			if(rst!=null){
				try {
					rst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		public static void main(String[] args) throws SQLException {
			Connection con = openConnection();
			System.out.println(con);
		}
}
