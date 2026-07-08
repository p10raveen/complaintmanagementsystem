<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.database.UserDatabaseOperations" %>

    <%
    	String email=request.getParameter("email");
    	String password = request.getParameter("password");
    	
    	boolean status = UserDatabaseOperations.checkUser(email, password);
    	
    	if(status)
    	{
    		int id = UserDatabaseOperations.getUserId(email,password);
    		String name = UserDatabaseOperations.getUserName(email,password);
    		
    		session.setAttribute("userid",id);
    		session.setAttribute("username",name);
    		
    		response.sendRedirect("dashboard.jsp");
    		
    	}
    	else
    	{
    		%>
    		<script>
    			alert("Invalid Email or Password");
    			window.location="login.jsp";
    		</script>
    	<%}%>
    	
    %>