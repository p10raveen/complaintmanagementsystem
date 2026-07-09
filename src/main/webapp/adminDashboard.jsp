<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.AdminDatabaseOperations, java.util.ArrayList" %>
    
    <%
    	String username = (String)session.getAttribute("admin");
    	if(username==null)
    	{
    		response.sendRedirect("adminlogin.jsp");
    	}
    	
   		 ArrayList<ArrayList<String>> a = AdminDatabaseOperations.getComplaints();
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<div class="navbar-brand">
				Complaint Management System
			</div>
		</div>
		<ul class="nav navbar-nav navbar-right">
			
			<li><a  href="logout.jsp" class="btn btn-danger" style="color:white;">Logout</a></li>
		</ul>
	</div>
</nav>
<div class="container">
	<div class="jumbotron">
		<h2>Welcome! <%=username.toUpperCase() %></h2>
		<p>You are successfully logged in.</p>
	</div>
	<div>
		<table class="table table-bordered">
			<tr style="background:#F5D327;">
				<th>Complaint Id</th>
				<th>Subject</th>
				<th>Description</th>
				<th>Complaint Date</th>
				<th>User Id</th>
				<th>User Name</th>
				<th>Action</th>
			</tr>
			<%
				for(ArrayList<String> b: a)
				{
					String s = b.get(3);
			%>
				<tr>
					<td><%=b.get(0) %></td>
					<td><%=b.get(1) %></td>
					<td><%=b.get(2) %></td>
					<td><%=b.get(4) %></td>
					<td><%=b.get(5) %></td>
					<td><%=b.get(6) %></td>
					<%if(s.equals("Pending")){ %>
					<td>
						<form method="post" action="updateStatus.jsp">
							<input type="text" name="id" value="<%=b.get(0)%>" hidden/>
							<select name="status" class="form-control">
								<option value=<%=b.get(3) %>>Pending</option>
								<option value="Resolved">Resolved</option>
							</select>
							<input type="submit" value="Update" class="btn btn-info"/>
						</form>
					</td>
					<%}else
						{
						%>
						<td style="color:blue;"><%=s %></td>
						<%} %>
				</tr>
			<%} %>
		</table>
	</div>
</div>
</body>
</html>