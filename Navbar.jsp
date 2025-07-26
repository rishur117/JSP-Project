<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navbar Home Page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<style>

.abc ul li a{
	text-decoration:none;
	font-weight:bold;
	transition: 0.5s ease-in-out;
}
.abc ul li a:hover{
	color:orange;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand bg-body-tertiary sticky-top" style="background:cyan;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">E-Learning</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse abc" id="navbarSupportedContent">
      <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="HomePage.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AboutPage.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Index.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="RegistrationUser.jsp">Registration</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="Java.jsp">Java</a></li>
            <li><a class="dropdown-item" href="Javafullstack.jsp">Java fullstack</a></li>
            <li><a class="dropdown-item" href="Python.jsp">Python fullstack</a></li>
            <li><a class="dropdown-item" href="Dotnet.jsp">Dotnet fullstack</a></li>
            <li><a class="dropdown-item" href="Mern.jsp">Mern fullstack</a></li>
            <li><a class="dropdown-item" href="Mean.jsp">Mean fullstack</a></li>
            <li><a class="dropdown-item" href="Php.jsp">PHP</a></li>
            <li><a class="dropdown-item" href="C#.jsp">C#</a></li>
            <li><a class="dropdown-item" href="Android.jsp">Android</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</body>
</html>