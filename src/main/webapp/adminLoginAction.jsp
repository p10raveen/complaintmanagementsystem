<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="com.database.AdminDatabaseOperations" %>
    <%
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	
    	boolean status = AdminDatabaseOperations.checkAdmin(username, password);
    	
    	if(status)
    	{
    		session.setAttribute("admin",username);
    		response.sendRedirect("adminDashboard.jsp");
    	}
    	else
    	{
    		%>
    		<script>
    			alert("Invalid Username or Password");
    			window.location = "adminLogin.jsp";
    		</script>
    	<%}%>
    %>