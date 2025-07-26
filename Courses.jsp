<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<%@include file="AdminNavbar.jsp" %>
<style>
*{
	margin:0;
	padding:0;
}

.main{
	width:100vw;
	height:150vh;
	background-position:center;
	background-size:cover;
	background:lightblue;
}

.card{
	height:950px;
	width:35vw;
	background:black;
	display:absolute;
	top:20px;
	left:10rem;
	float:left;
	margin-left:25rem;
}
.card-header{
	display:flex;
	justify-content:center;
	font-size:25px;
	font-weight:700;
	color:white;
	font-family:'Times New Roman';
}

option{
	color:black;
}
.card input:focus{
	outline:none;
}
.card ::placeholder{
	color:white;
}

#courseTitle, #courseDescription,#instructorName, #instructorCredentials, #instructorBio,#fees,#courseTag{

	height:40px;
	margin-left:15px;
	float:left;
	width:33vw;
	margin-bottom:15px;
	background:transparent;
	border-bottom:1px solid white;
	latter-spacing:1px;
	color:white;
}

label{
	color:white;
	margin:15px;
}
#submitbtn{
	margin:20px;
	float:left;
	margin-left:8rem;
	font-size:20px;
	font-weight:600;
}



</style>

</head>
<body>

<div class="main">


<div class="card">
<div class="card-header">Course Input Form</div>
<form action="CoursesData.jsp" method="post">
<div>
<label for="courseTitle">Course Title</label>
<select name="courseTitle" id="courseTitle" class="form-control" required>
<option>Select Your Course</option>
<option value="Java">Java</option>
<option value="Java FullStack">Java Fullstack</option>
<option value="Python FullStack">Python Fullstack</option>
<option value="Dotnet FullStack">Dotnet Fullstack</option>
<option value="PHP">PHP</option>
<option value="Mern FullStack">Mern Fullstack</option>
<option value="Mean FullStack">Mean Fullstack</option>
<option value="C#">C#</option>
<option value="Android">Android</option>
</select>
</div>

<div>
<label for="courseDescription">Course Description</label>
<textarea type="text" id="courseDescription" name="courseDescription" class="form-control" placeholder="Enter courseDescription" required></textarea>
</div>

<div>
<label for="instructorName">Instructor Name</label>
<input type="text" id="instructorName" name="instructorName" class="form-control" placeholder="Enter instructorName" required>
</div>

<div>
<label for="instructorCredentials">Instructor Credentials</label>
<input type="password" id="instructorCredentials" name="instructorCredentials" class="form-control" placeholder="Enter instructorCredentials" required>
</div>

<div>
<label for="instructorBio">Instructor Bio</label>
<textarea type="text" id="instructorBio" name="instructorBio" class="form-control" placeholder="Enter instructorBio" required></textarea>
</div>

<div>
<label for="fees">Fees</label>
<input type="text" id="fees" name="fees" class="form-control" placeholder="Enter course fees" required>
</div>

<div>
<label for="courseTag">Course Tag</label>
<select name="courseTag" id="courseTag" class="form-control" required>
<option>Select Your Course Tag</option>
<option value="IT">IT</option>
<option value="ELECTRONIC">Electronic</option>
<option value="CIVIL">Civil</option>
<option value="DESINIER">Desinier</option>
<option value="COMMERCE">Commerce</option>
</select>
</div>


<button type="submit" id="submitbtn" class="btn btn-success btn-sm w-50">Submit</button>


</form>
</div>

</div>

<script type="text/javascript">
let textarea = document.querySelector("textarea");
let span = document.querySelector("span")
textarea.addEventListener("input", function(){
	span.textConetent = textarea.value.trim().length;
})
</script>

</body>
</html>