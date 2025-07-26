<%@page import="com.databases.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("username");
String stu_id = request.getParameter("stu_id");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String password = request.getParameter("password");
String fee = request.getParameter("fee");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String course = request.getParameter("course");
String duration = request.getParameter("duration");
String city = request.getParameter("city");
String state = request.getParameter("state");
String address = request.getParameter("address");


try{
	Connection dbs = Conn.getConn();
	String query = "select * from admission where stu_id=? and username=?";
	PreparedStatement ps = dbs.prepareStatement(query);
	ps.setString(1,stu_id);
	ps.setString(2,username);

	
	ResultSet set = ps.executeQuery();
	
		if(set.next())
		{
			out.print("<center><h2>You have already register using this student id and username </h2></center>");
			RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
			rd.include(request,response);
		}else{
		
		String str = "insert into admission (username,stu_id,fname,lname,email,phone,password,fee,gender,dob,course,duration,city,state,address) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = dbs.prepareStatement(str);
		
		ps.setString(1, username);
		ps.setString(2, stu_id);
		ps.setString(3, fname);
		ps.setString(4, lname);
		ps.setString(5, email);
		ps.setString(6, phone);
		ps.setString(7, password);
		ps.setString(8, fee);
		ps.setString(9, gender);
		ps.setString(10, dob);
		ps.setString(11, course);
		ps.setString(12, duration);
		ps.setString(13, city);
		ps.setString(14, state);
		ps.setString(15, address);
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("ViewStudentData.jsp");
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("AdmissionForm.jsp");
			rd.include(request, response);
		}
		}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>