<%@page import="com.databases.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Admin</title>
</head>
<body>
<%
String username = request.getParameter("username");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String password = request.getParameter("password");
String repassword = request.getParameter("repassword");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String city = request.getParameter("city");
String state = request.getParameter("state");
String course = request.getParameter("course");
String address = request.getParameter("address");

if(password.equals(repassword))
{
try{
	Connection dbs = Conn.getConn();
	String query = "select * from registration_jsp where username=? and email=? and phone=?";
	PreparedStatement ps = dbs.prepareStatement(query);
	ps.setString(1,username);
	ps.setString(2,email);
	ps.setString(3,phone);
	
	ResultSet set = ps.executeQuery();
	
		if(set.next())
		{
			out.print("<center><h2>You have already register using this username, email and phone </h2></center>");
			RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
			rd.include(request,response);
		}else{
		
		String str = "insert into registration_jsp (username,fname,lname,email,phone,password,repassword,gender,dob,city,state,course,address) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = dbs.prepareStatement(str);
		
		ps.setString(1, username);
		ps.setString(2, fname);
		ps.setString(3, lname);
		ps.setString(4, email);
		ps.setString(5, phone);
		ps.setString(6, password);
		ps.setString(7, repassword);
		ps.setString(8, gender);
		ps.setString(9, dob);
		ps.setString(10, city);
		ps.setString(11, state);
		ps.setString(12, course);
		ps.setString(13, address);
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("../Index.jsp");
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
			rd.include(request, response);
		}
		}
}
catch(Exception e)
{
	e.printStackTrace();
}
}
else
{
	out.print("<center><h2>Your password and repassword are not matched Please enter same password in both field </h2></center>");
	RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
	rd.include(request,response);
}

%>
</body>
</html>