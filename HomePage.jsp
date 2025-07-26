<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<%@include file="Navbar.jsp" %>
</head>
<body>
<div class="main p-3">
<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/first.jpg" class="d-block w-100" alt="Photo1" height="500px"> 
    </div>
    <div class="carousel-item">
      <img src="images/second.jpg" class="d-block w-100" alt="Photo2" height="500px">
    </div>
    <div class="carousel-item">
      <img src="images/third.jpg" class="d-block w-100" alt="Photo3" height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<%@include file="HomeCourseShow.jsp" %>
<%@include file="TrainerDataPage.jsp" %>
<%@include file="Content_Slider.jsp" %>
</div>
<%@include file="Contact.jsp" %>
</body>
</html>