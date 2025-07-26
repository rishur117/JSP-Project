<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.databases.Conn"%>
<%@page import="java.sql.Connection"%>
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
String courseTitle = request.getParameter("courseTitle");
String courseDescription = request.getParameter("courseDescription");
String instructorName = request.getParameter("instructorName");
String instructorCredentials = request.getParameter("instructorCredentials");
String instructorBio = request.getParameter("instructorBio");
String fees = request.getParameter("fees");
String courseTag = request.getParameter("courseTag");

try{
	Connection dbs = Conn.getConn();
	String query = "insert into coursetable (courseTitle,courseDescription,instructorName,instructorCredentials,instructorBio,fees,courseTag) values (?,?,?,?,?,?,?)";
	PreparedStatement ps = dbs.prepareStatement(query);
	
	ps.setString(1,courseTitle);
	ps.setString(2,courseDescription);
	ps.setString(3,instructorName);
	ps.setString(4,instructorCredentials);
	ps.setString(5,instructorBio);
	ps.setString(6,fees);
	ps.setString(7,courseTag);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("CourseDataView.jsp");
	}
	else{
		RequestDispatcher rd = request.getRequestDispatcher("Courses.jsp");
		rd.include(request,response);
	}
	
	
}catch(Exception e)
{
	e.printStackTrace();
}





%>
</body>
</html>