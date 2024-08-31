<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/bootstrapCss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>
						<%  String msg= (String)  session.getAttribute("fail"); 
						 if(msg != null){
							 %>
							 
							 <p class="text-center text-danger fa-4 "><%= msg %></p>
							 <% session.removeAttribute("fail"); %>
							 
						 <% }%>
						 
						 <%  String msg1= (String)  session.getAttribute("change"); 
						 if(msg1 != null){
							 %>
							 
							 <p class="text-center text-success fa-4 "><%= msg1%></p>
							 <% session.removeAttribute("change"); %>
							 
						 <% }%>
						 
						
					
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-danger text-white col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>