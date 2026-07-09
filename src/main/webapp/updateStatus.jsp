<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.AdminDatabaseOperations" %>
    <% 
    	String id = request.getParameter("id");
    	String status = request.getParameter("status");
    	
    	int i = AdminDatabaseOperations.setStatus(id, status);
    	
    	
    	response.sendRedirect("adminDashboard.jsp");
    	
    %>
    
