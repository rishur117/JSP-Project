<%@page import="com.databases.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="AdminNavbar.jsp" %>
</head>
<body>
<h2 class="text-center p-3">All Student Data</h2>
<div class="contatiner-fluid p-2">
<table class="table table-bordered table-hover">
<thead style="background:cyan;">
<tr class="text-center">
<th scope="col">UserName</th>
<th scope="col">Student ID</th>
<th scope="col">First Name</th>
<th scope="col">Last Name</th>
<th scope="col">Email</th>
<th scope="col">Phone</th>
<th scope="col">Password</th>
<th scope="col">Fees</th>
<th scope="col">Gender</th>
<th scope="col">DOB</th>
<th scope="col">Course</th>
<th scope="col">Duration</th>
<th scope="col">City</th>
<th scope="col">State</th>
<th scope="col">Address</th>
<th scope="col">Action</th>
</tr>
</thead>
<tbody>
<%
try{
	Connection dbs = Conn.getConn();
	String query = "select * from admission";
	PreparedStatement ps = dbs.prepareStatement(query);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		%>
			<tr>
			<td><%=rs.getString("username") %></td>
			<td><%=rs.getString("stu_id") %></td>
			<td><%=rs.getString("fname") %></td>
			<td><%=rs.getString("lname") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("phone") %></td>
			<td><%=rs.getString("password") %></td>
			<td><%=rs.getString("fee") %></td>
			<td><%=rs.getString("gender") %></td>
			<td><%=rs.getString("dob") %></td>
			<td><%=rs.getString("course") %></td>
			<td><%=rs.getString("duration") %></td>
			<td><%=rs.getString("city") %></td>
			<td><%=rs.getString("state") %></td>
			<td><%=rs.getString("address") %></td>
			<td><a href="EditStudentPage.jsp?stu_id=<%=rs.getString("stu_id")%>"><button type="button" class="btn btn-outline-success btn-sm m-1">Edit</button></a>
			<a href="DeleteStudentData.jsp?stu_id=<%=rs.getString("stu_id")%>"><button type="button" class="btn btn-outline-success btn-sm">Delete</button></a>
			</td>
			</tr>
		<%
	}
}catch(Exception e)
{
	e.printStackTrace();
}
%>

</tbody>

</table>
</div>
</body>
</html>