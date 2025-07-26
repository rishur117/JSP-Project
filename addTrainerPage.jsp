<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Trainer Data</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<%@include file="AdminNavbar.jsp"%>
</head>
<body>

<div class="card" style="height:50%; width:30%; margin-top:5rem; margin-left:25rem;">
<div class="row">
<div class="mb-5 d-flex justify-content-center">
<form action="../FileUploadServlet" method="post" enctype="multipart/form-data">
  <div class="col-10">
    <label for="trainerName" class="form-label">Trainer Name</label>
    <input type="text" class="form-control" name="trainerName">
  </div>
  <div class="col-10">
    <label for="technicalSkills" class="form-label">Technical Skills</label>
    <input type="text" class="form-control" name="technicalSkills">
  </div>
  <div class="col-10">
    <label for="experience" class="form-label">Experience</label>
    <input type="text" class="form-control" name="experience">
  </div>
  <div class="col-10">
  <label for="file" class="form-label">Image</label>
  <input class="form-control" type="file" name="file">
</div>
  
  
  <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
</div>
</div>
</div>

</body>
</html>