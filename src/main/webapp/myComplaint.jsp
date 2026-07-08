<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.ComplaintOperations,java.util.ArrayList" %>
     <%
    	if(session.getAttribute("userid")==null)
    	{
    		response.sendRedirect("login.jsp");
    	}
    %>
    <%
		int userid = (int)session.getAttribute("userid");
		ArrayList<ArrayList<String>> a = ComplaintOperations.getComplaintByUser(userid);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Complaints</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-primary" style="margin-top:40px;">
				<div class="panel-heading">
					<h3>My Complaints</h3>
				</div>
				<div class="panel-body">
					<table class="table table-bordered">
						<tr>
							<th>complaint_id</th>
							<th>subject</th>
							<th>description</th>
							<th>status</th>
							<th>complaint_date</th>
						</tr>
						<%
							for(ArrayList<String> b: a)
							{
						%>
								<tr>
									<td><%=b.get(0) %></td>
									<td><%=b.get(1) %></td>
									<td><%=b.get(2) %></td>
									<td><%=b.get(3) %></td>
									<td><%=b.get(4) %></td>
								</tr>
						<%   } 
						%>
					</table>
				</div>
			</div>
		</div>
	</div>

</div>

</body>
</html>















