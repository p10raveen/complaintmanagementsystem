<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.database.UserDatabaseOperations" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

int status = UserDatabaseOperations.setUser(name,email,password);
if(status==1)
{
	response.sendRedirect("login.jsp");
}
else
{
	out.println("Registration Failed.");
}

%>
