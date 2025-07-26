<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Login Page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="Navbar.jsp" %>
<style>
.card{
	height:320px; 
	width:350px;
	background:linear-gradient(to right,#e0e0e0,#c7c7c7,#0072c9);
	border-radius:10%;
}
.card:hover{
	height:340px;
	width:370px;
   	background:radial-gradient(#cff4fc,#fff3cd,#9eeaf9);
 	box-shadow:0px 0px 5px 5px ;
 }
</style>
</head>
<body>

<h1 class="text-center">Log in Page</h1>
<div class="container d-flex justify-content-center mt-5">
<div class="card p-5">
<form action="IndexJava.jsp" method="post">
<div class="mb-3 col-12">
<label for="form-floation">Email Address</label>
<input type="email" class="form-control" placeholder="Enter your email" name="email" required>
</div>

<div class="mb-3 col-12">
<label for="form-floation">Password</label>
<input type="password" class="form-control" placeholder="Enter Password" name="password" required>
</div>

<div class="p-3 mb-3">
<button type="submit" class="btn btn-outline-success w-75"><b>Log in</b></button>
</div>

</form>


</div>
</div>


</body>
</html>