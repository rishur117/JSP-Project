<%@page import="com.databases.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student Data From DB</title>
</head>
<body>
<%
String stu_id = request.getParameter("stu_id");
String username = request.getParameter("username");
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
		String str = "update admission set username=?,fname=?,lname=?,email=?,phone=?,password=?,fee=?,gender=?,dob=?,course=?,duration=?,city=?,state=?,address=? where stu_id=?";
		PreparedStatement ps = dbs.prepareStatement(str);
		
		ps.setString(1, username);
		ps.setString(2, fname);
		ps.setString(3, lname);
		ps.setString(4, email);
		ps.setString(5, phone);
		ps.setString(6, password);
		ps.setString(7, fee);
		ps.setString(8, gender);
		ps.setString(9, dob);
		ps.setString(10, course);
		ps.setString(11, duration);
		ps.setString(12, city);
		ps.setString(13, state);
		ps.setString(14, address);
		ps.setString(15, stu_id);
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("ViewStudentData.jsp");
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("EditStudentPage.jsp");
			rd.include(request, response);
		}

}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>