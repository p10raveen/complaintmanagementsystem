<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body style="background:#f5f5f5">
	<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-primary" style="margin-top:50px;">
				<div class="panel-heading">
					<h3 class="panel-title">User Login</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="loginAction.jsp">
						
						<div class="form-group">
							<label>Email</label>
							<input type="email" name="email" class="form-control" required/>
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="password" name="password" class="form-control" required/>
						</div>
						<input type="submit" class="btn btn-success btn-block" value="Login"/>
					</form>
					<br/>
					<a href="register.jsp" class="btn btn-primary btn-block">New User? Register</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>