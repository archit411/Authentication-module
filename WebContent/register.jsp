<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css"/>
</head>
<body style="background-image: linear-gradient(to right top, #28446e, #2e6a82, #5d8d8e, #96ada0, #cacdc3);background-repeat:no-repeat; background-attachement:fix; background-size:1600px 1300px;">
<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>

				<li class="nav-item"><a class="nav-link disabled"
					href="register.jsp">Register</a></li>
			</ul>
			<!-- 
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
-->
		</div>
	</nav>
	<!-- end navbar -->
	<div class="container">
		<div class="row mt-3">
			<div class="col-md-4 offset-md-4">
				<!-- col-md-4: This class is used when the device size is medium or greater than 768px and the maximum width of container is 720px and you want the width equal to 4 columns.  -->
				<!-- col-md-4-offset-md-4  moves .col-md-4 over four columns-->
				<div class="card">
					<div class="card-header text-center c-head">
						<i class="fa fa-user-circle-o fa-2x"></i>
						<h5>Registration</h5>
					</div>
					<%
						String regMsg = (String)session.getAttribute("reg.msg");
						if(regMsg!=null)
						{
						%>
							<div class="alert alert-success" role="alert"><%=regMsg %>Login<a href="login.jsp">Click here</a></div>
						<%
						session.removeAttribute("reg.msg");
						}
					%>
					
					
					<div class="card-body">
						<form action="registerServlet" method="post"><!-- action="registerServlet" is used because when the register.jsp page data is submitted it will call registerServlet page -->
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Full name" name="uname"><!-- by using name=uname we retrieve data in servlet  -->
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password">
							</div>
							<button type="submit" class="btn btn-primary btn-block badge-pill">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>