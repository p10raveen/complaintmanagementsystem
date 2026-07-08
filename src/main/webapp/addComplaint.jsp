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
<title>Add Complaint</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-primary" style="margin-top:40px;">
				<div class="panel-heading">
					<h3>Add Complaint</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="saveComplaint.jsp">
						<div class="form-group">
							<label>Subject</label>
							<input type="text" name="subject" class="form-control" required/>
						</div>
						
						<div class="form-group">
							<label>Description</label>
							<textarea name="description" class="form-control" rows="5" required></textarea>
						</div>
						
						<input type="submit" value="Submit Complaint" class="btn btn-info"/>
						<a href="dashboard.jsp" class="btn btn-default">Back</a>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>
</body>
</html>