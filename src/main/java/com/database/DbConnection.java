package com.database;
import java.sql.*;
public class DbConnection {

	public static Connection takeConnection()
	{
		Connection con = null;
		
		try
		{
			//1. Register Driver class 
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2. Create Connection
			String path = "jdbc:mysql://localhost:3306/complaintdb";
			String username = "root";
			String password = "bhopal";
			
			con = DriverManager.getConnection(path, username, password);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return con;
	}
}
