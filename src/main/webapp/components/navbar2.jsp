<%@page import="com.org.dto.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">MoManagement</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<% User user12= (User)   session.getAttribute("userobj");%>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="profile.jsp">Profile</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="ViewUser.jsp">Users</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="ChangePwd.jsp">Change-Password</a></li>
						<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Logout.jsp">Logout</a></li>
						
				</ul>

			</div>
		</div>
		</nav>
