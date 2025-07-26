<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navbar Home Page</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/bootstrap.js"></script>
</head>
<body>
<nav class="navbar navbar-expand bg-body-tertiary sticky-top" style="background:cyan;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">E-Learning</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Admin.jsp">Admin</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="Registration.jsp">Registration</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="Courses.jsp">Courses_Data</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addTrainerPage.jsp">Add_Trainer_Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ViewTrainersData.jsp">View_Trainer_Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AdmissionForm.jsp">Add_Student</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ViewStudentData.jsp">View_Student_Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../LogoutSession.jsp">Logout</a>
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