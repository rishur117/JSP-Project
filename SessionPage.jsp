<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Login Page For Session</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style>
.container{
	display:flex;
	justify-content:center;
}
.card{
	height:40vh;
	width:30vw;
	background:linear-gradient(to right,#e0e0e0,#c7c7c7,#0072c9)
}
.card:hover{
   	background:radial-gradient(#cff4fc,#fff3cd,#9eeaf9);
 		box-shadow:0px 0px 5px 5px ;
 }
</style>
</head>
<body>

<h1 class="text-center">Log in Page</h1>
<div class="container mt-5">
<div class="card">
<form action="SessionJava.jsp" method="post">
<div class="form-floation mb-3 col-8" style="margin:10px;">
<label for="form-floation">Email Address</label>
<input type="email" class="form-control" id="floationInput" placeholder="Enter your email" name="email" required>
</div>

<div class="form-floation mb-3 col-8" style="margin:10px;">
<label for="form-floation">Password</label>
<input type="password" class="form-control" id="floationInput" placeholder="password" name="password" required>
</div>

<div class="form-floating mb-3" style="margin-left:100px;">
<button type="submit" class="btn btn-primary w-50">Log in</button>
</div>

</form>


</div>
</div>


</body>
</html>