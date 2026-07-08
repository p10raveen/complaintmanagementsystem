package com.database;

import java.sql.*;
import java.util.ArrayList;

public class ComplaintOperations {
	
	public static int setComplaint(int userid, String subject, String description)
	{
		int i = 0;
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "insert into complaints(subject,description,complaint_date,user_id) values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, subject);
			ps.setString(2, description);
			ps.setString(3, new java.util.Date().toString());
			ps.setInt(4, userid);
			
			i = ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				
		return i;
	}
	
	public static ArrayList<ArrayList<String>> getComplaintByUser(int userid)
	{
		ArrayList<ArrayList<String>> a = new ArrayList<ArrayList<String>>();
		try
		{
			Connection con = DbConnection.takeConnection();
			String query = "select * from complaints where user_id=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, userid);
		
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				ArrayList<String> b = new ArrayList<String>();
				b.add(rs.getString(1));
				b.add(rs.getString(2));
				b.add(rs.getString(3));
				b.add(rs.getString(4));
				b.add(rs.getString(5));
				a.add(b);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				
		return a;
	}

}
