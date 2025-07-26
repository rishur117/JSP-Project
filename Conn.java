package com.databases;
import java.sql.*;
public class Conn {
	public static Connection getConn()
	{
		Connection con;
		String url = "jdbc:mysql://localhost:3306/rishu";
		String username = "rishur117";
		String password = "rishur117";
//		String database = "rishu";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
			System.out.println("Connection created");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
}
