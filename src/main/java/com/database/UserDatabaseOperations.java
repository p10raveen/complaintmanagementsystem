package com.database;

import java.sql.*;

public class UserDatabaseOperations {

	public static int setUser(String name,String email, String password)
	{
		int status = 0;
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "INSERT INTO users(name,email,password) values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return status;
	}
	
	public static boolean checkUser(String email, String password)
	{
		boolean status = false;
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "select * from users where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				status = true;
				break;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return status;
	}
	
	public static int getUserId(String email, String password)
	{
		int id = -1;
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "select * from users where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				id = rs.getInt(1);
				break;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return id;
	}
	
	public static String getUserName(String email, String password)
	{
		String name = "";
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "select * from users where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				name = rs.getString("name");
				break;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return name;
	}
}
