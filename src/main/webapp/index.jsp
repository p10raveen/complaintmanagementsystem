<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Management System</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
	body{
		background:#f5f5f5;
	}
	.jumbotron{
		margin-top:30px;
		background:#337ab7;
		color:white;	
		text-align:center;
	}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">Complaint Management System</a>
	</div>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="index.jsp">Home</a></li>
		<li><a href="register.jsp">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="adminlogin.jsp">Admin Login</a></li>
	</ul>
</div>
</nav>

<div class="container">
  <div class="jumbotron">
    <h1>Complaint Management System</h1>      
    <p>Submit and Track Your Complaints Easily</p>
    <br/>
    <div class="row">
    	<div class="col-md-4"><a href="register.jsp" class="btn btn-warning btn-lg btn-block">Register</a></div>
    	<div class="col-md-4"><a href="login.jsp" class="btn btn-info btn-lg btn-block">Login</a></div>
    	<div class="col-md-4"><a href="adminlogin.jsp" class="btn btn-danger btn-lg btn-block">Admin Login</a></div>
    </div>
  </div>  
  
  <div class="row">
  	<div class="col-md-4">
  		<div class="panel panel-warning">
  			<div class="panel-heading">
  				Easy Registration
  			</div>
  			<div class="panel-body">
  				Users can create their account in seconds.
  			</div>
  		</div>
  	</div>
  	
  	<div class="col-md-4">
  		<div class="panel panel-success">
  			<div class="panel-heading">
  				Raise Complaint
  			</div>
  			<div class="panel-body">
  				Submit complaints online without paperwork.
  			</div>
  		</div>
  	</div>
  	
  	<div class="col-md-4">
  		<div class="panel panel-info">
  			<div class="panel-heading">
  				Track Status
  			</div>
  			<div class="panel-body">
  				Check complaint status anytime.
  			</div>
  		</div>
  	</div>
  </div>   
</div>

<div class="footer">
	<p>Copyright 2026 © Complaint Management System</p>
</div>


</body>
</html>