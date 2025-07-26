<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Form</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<%@include file="AdminNavbar.jsp" %>
<style>
*{
	margin:0;
	padding:0;
}

.card #username,#stu_id, #fname,#lname,#email,#phone,#password,#fee,#dob,#city,#state,#course,#duration{
	width:240px;
	height:32px;
	float:left;
	margin-top:10px;
	margin-left:15px;
	background:transparent;
	border-bottom:1px solid white;
	border-top:none;
	border-left:none;
	border-right:none;
	color:white;
	latter-spacing:1px;
}

.card input:focus{
	outline:none;
}
.card ::placeholder{
	color:white;
}
#gender{
	width:43px;
	color:white;
	float:left;
	margin-top:20px;
	font-size:13px;
	font-weight:600;
}
#address{
	width:490px;
	margin-left:15px;
	float:left;
	margin-top:10px;
	background:transparent;
	border-bottom:1px solid white;
	border-top:none;
	border-left:none;
	border-right:none;
	latter-spacing:1px;
	color:white;
}
option{
	color:black;
}

.aha a{
	text-decoration:none;
}


</style>
</head>
<body>

<div class="main" style="width:100vw; height:100vh; background:lightblue; background-position:center; background-size:cover;">


<div class="row d-flex justify-content-center">

<div class="card col-lg-6 col-12 mt-5" style="height: 550px; width:550px; float:left; background:black;">
<div class="card-header d-flex justify-content-center" style="font-size: 22px; font-weight: 700; color: white;">Admission Form </div>
<form action="AdmissionData.jsp" method="post">
<input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
<input type="text" id="stu_id" name="stu_id" class="form-control" placeholder="Enter ID" required>
<input type="text" id="fname" name="fname" class="form-control" placeholder="Enter your first name" required>
<input type="text" id="lname" name="lname" class="form-control" placeholder="Enter your last name" required>
<input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
<input type="tel" id="phone" name="phone" class="form-control" placeholder="Enter your phone" pattern="[6-9]{1}[0-9]{9}" required>
<input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>

<select name="fee" id="fee" class="form-control"  required>
<option>Fees</option>
<option value="20000">20000</option>
<option value="30000">30000</option>
<option value="15000">15000</option>
<option value="25000">25000</option>
</select>

<input type="radio" id="gender" name="gender" value="male" checked>
<label for="male" id="gender">Male</label>
<input type="radio" id="gender" name="gender" value="female">
<label for="female" id="gender">Female</label>
<input type="radio" id="gender" name="gender" value="other">
<label for="other" id="gender">Other</label>

<input type="date" id="dob" name="dob" class="form-control">

<select name="course" id="course" class="form-control"  required>
<option>Course</option>
<option value="java">Java</option>
<option value="java fullstack">Java Fullstack</option>
<option value="python fullstack">Python Fullstack</option>
<option value="dotnet fullstack">Dotnet Fullstack</option>
<option value="php">PHP</option>
<option value="mern fullstack">Mern Fullstack</option>
<option value="mean fullstack">Mean Fullstack</option>
<option value="c#">C#</option>
<option value="android">Android</option>
</select>

<select name="duration" id="duration" class="form-control"  required>
<option>Duration</option>
<option value="6 Months">6 Months</option>
<option value="8 Months">8 Months</option>
<option value="3 Months">3 Months</option>
<option value="4 Months">4 Months</option>
</select>

<input type="text" id="city" name="city" class="form-control" placeholder="Enter your city" required>

<select name="state" id="state" class="form-control" required>
<option>Select Your State</option>
<option id="statename" value="Bihar">Bihar</option>
<option id="statename" value="Uttar Pradesh">UP</option>
<option id="statename" value="Madhya Pradesh">MP</option>
<option id="statename" value="Delhi">Delhi</option>
<option id="statename" value="Jharkhand">Jharkhand</option>
<option id="statename" value="Haryana">Haryana</option>
</select>



<input type="text" id="address" name="address" class="form-control" placeholder="Enter here your full address" required>

<button type="submit" id="registerbtn" class="btn btn-outline-success btn-sm w-50 mb-3" style="height:40px; font-weight:700; font-size:20px; float:left; margin-top: 40px; margin-left: 120px;">Register</button>

<p class="aha col-6 ms-5" style="color:white; float:left;">
Already have an account? <a href="Index.html">Sign in</a>
</p>


</form>
</div>

<div class="col-lg-6 col-12 mt-5">
    <div class="card ms-5" style="height:600px; width:600px; float:left;">
    <img src="../images/register.png" height="100%" width="100%">
    </div>
</div>

</div>
</div>

</body>
</html>