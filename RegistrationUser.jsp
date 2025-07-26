<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration User Page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<%@include file="Navbar.jsp" %>
<style>
*{
	margin:0;
	padding:0;
}

/* .main{
	width:100vw;
	height:100vh;
	background-position:center;
	background-size:cover;
	background:lightblue;
} */

/* .card{
	height:70vh;
	width:35vw;
	background:black;
	display:absolute;
	top:20px;
	left:20px;
	float:left;
	justify-content:center;
	margin-left:8rem;
	margin-top:5rem;
} */
/* .card-header{
	display:flex;
	justify-content:center;
	font-size:22px;
	font-weight:700;
	color:white;
} */
.card #fname,#lname,#email,#phone,#password,#repassword,#dob,#city,#state,#course{
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
	/* latter-spacing:1px; */
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
#username, #address, #course{
	width:490px;
	margin-left:15px;
	float:left;
	margin-top:10px;
	background:transparent;
	border-bottom:1px solid white;
	border-top:none;
	border-left:none;
	border-right:none;
	/* latter-spacing:1px; */
}
option{
	color:black;
}
/* #registerbtn{
	margin:20px;
	float:left;
	margin-left:8rem;
	font-size:20px;
	font-weight:600;
} */

/* .aha{
	width:16vw;
	margin-left:9rem;
	color:white;
} */
.aha a{
	text-decoration:none;
}


</style>
</head>
<body>

<div class="main" style="width:100vw; height:100vh; background-position:center; background-size:cover;">


<div class="row d-flex justify-content-center">

<div class="card col-lg-6 col-12 mt-5" style="height: 550px; width:550px; float:left; background:black;">
<div class="card-header d-flex justify-content-center" style="font-size: 22px; font-weight: 700; color: white;">Registration User </div>
<form action="RegData.jsp" method="post">
<input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
<input type="text" id="fname" name="fname" class="form-control" placeholder="Enter your first name" required>
<input type="text" id="lname" name="lname" class="form-control" placeholder="Enter your last name" required>
<input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
<input type="tel" id="phone" name="phone" class="form-control" placeholder="Enter your phone" pattern="[6-9]{1}[0-9]{9}" required>
<input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
<input type="text" id="repassword" name="repassword" class="form-control" placeholder="Enter re-password" required>

<input type="radio" id="gender" name="gender" value="male" checked>
<label for="male" id="gender">Male</label>
<input type="radio" id="gender" name="gender" value="female">
<label for="female" id="gender">Female</label>
<input type="radio" id="gender" name="gender" value="other">
<label for="other" id="gender">Other</label>

<input type="date" id="dob" name="dob" class="form-control">

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




<input type="text" id="address" name="address" class="form-control" placeholder="Enter here your full address" required>

<button type="submit" id="registerbtn" class="btn btn-outline-success btn-sm w-50 mb-3" style="height:40px; font-weight:700; font-size:20px; float:left; margin-top: 40px; margin-left: 120px;">Register</button>

<p class="aha col-6 ms-5" style="color:white; float:left;">
Already have an account? <a href="Index.html">Sign in</a>
</p>


</form>
</div>

<div class="col-lg-6 col-12 mt-5">
    <div class="card ms-5" style="height:600px; width:600px; float:left;">
    <img src="images/register.png" height="100%" width="100%">
    </div>
</div>



</div>
</div>

<!-- 
onchange="populate(thid.id,'duration')"

<script type="text/javascript">
function populate(s1,s2)
{
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	s2.innerHTML="";
	if(s1.value == "java")
		{
			var optionArray=['6 months|6 Months'];
		}else if(s1.value == "java fullstack")
			{
				var optionArray=['8 months|8 Months'];
			}
	for(var option in optionArray)
		{
			var pair = optionArray[option].split("|");
			var newoption = document.createElement("option");
			newoption.value = pair[0];
			newoption.innerHTML = pair[1];
			s2.options.add(newoption);
		}
	
}


</script> -->

</body>
</html>