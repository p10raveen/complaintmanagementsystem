<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	if(session.getAttribute("userid")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
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
			<li><a  href="addComplaint.jsp">Add Complaint</a></li>
			<li><a  href="myComplaint.jsp">My Complaint</a></li>
			<li><a  href="logout.jsp" class="btn btn-danger" style="color:white;">Logout</a></li>
		</ul>
	</div>
</nav>
<div class="container">
	<div class="jumbotron">
		<h2>Welcome <%=session.getAttribute("username") %></h2>
		<p>You are successfully logged in.</p>
	</div>
</div>


</body>
</html>