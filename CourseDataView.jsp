<%@page import="java.sql.ResultSet"%>
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
<%@include file="AdminNavbar.jsp" %>
</head>
<body>
<h2>Course</h2>
<div class="contatiner-fluid">
<table class="table table-bordered table-hover">
<thead style="background:cyan;">
<tr>
<th scope="col">id</th>
<th scope="col">Title</th>
<th scope="col">Course Description</th>
<th scope="col">Instructor Name</th>
<th scope="col">Instructor Credentials</th>
<th scope="col">Instructor Bio</th>
<th scope="col">Fees</th>
<th scope="col">Course List</th>
<th scope="col">Action</th>
</tr>
</thead>
<tbody>
<%
try{
	Connection dbs = Conn.getConn();
	String query = "select * from coursetable";
	PreparedStatement ps = dbs.prepareStatement(query);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		%>
			<tr>
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("courseTitle") %></td>
			<td><%=rs.getString("courseDescription") %></td>
			<td><%=rs.getString("instructorName") %></td>
			<td><%=rs.getString("instructorCredentials") %></td>
			<td><%=rs.getString("instructorBio") %></td>
			<td><%=rs.getString("fees") %></td>
			<td><%=rs.getString("courseTag") %></td>
			<td><button type="button" class="btn btn-success btn-sm">Edit</button>
			<button type="button" class="btn btn-success btn-sm">Delete</button></td>
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