<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="com.database.ComplaintOperations" %>
    <%
    	int userid = (int)session.getAttribute("userid");
    	
    	String subject = request.getParameter("subject");
    	String description = request.getParameter("description");
    	
    	int i = ComplaintOperations.setComplaint(userid, subject, description);
    	
    	if(i>0)
    	{
    		response.sendRedirect("myComplaint.jsp");
    	}
    	else
    	{
    		out.println("Complaint not submitted.");
    	}
    	
    %>