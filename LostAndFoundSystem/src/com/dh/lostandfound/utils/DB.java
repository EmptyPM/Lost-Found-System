package com.dh.lostandfound.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	 public static Connection getConnection() throws Exception  {
		 
		 String url = "jdbc:mysql://localhost:3306/dblostandfound";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection(url, "root", "admin123");
			
			return con;
	 }

}
