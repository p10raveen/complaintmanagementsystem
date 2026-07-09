package com.database;

import java.sql.*;
import java.util.ArrayList;

public class AdminDatabaseOperations {

	
	public static boolean checkAdmin(String username, String password)
	{
		boolean status = false;
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "select * from admin where username=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
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
	
	public static ArrayList<ArrayList<String>> getComplaints()
	{
		ArrayList<ArrayList<String>> a = new ArrayList<ArrayList<String>>();
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "select c.*, u.name from complaints c, users u where c.user_id =u.id";
			
			PreparedStatement ps = con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				ArrayList<String> b = new ArrayList<String>();
				b.add(rs.getString(1));
				b.add(rs.getString(2));
				b.add(rs.getString(3));
				b.add(rs.getString(4));
				b.add(rs.getString(5));
				b.add(rs.getString(6));
				b.add(rs.getString(7));
				a.add(b);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return a;
	}
	
	public static int setStatus(String id, String status)
	{
		int i = 0;
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "update complaints set status=? where complaint_id=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, status);
			ps.setInt(2, Integer.parseInt(id));
			
			i= ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return i;
	}
}
