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
<div class="container-fluid mb-4 mt-4">
<div class="row">
<%
try{
	Connection dbs = Conn.getConn();
	String query = "select * from coursetable";
	PreparedStatement ps = dbs.prepareStatement(query);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		%>
		<div class="col-lg-4 col-sm-6 col-12 mt-3">
			<div class="card" style="width: 100%; height:100%; border-radius:5%;">
  <div class="card-body">
    <h5 class="card-title"><%= rs.getString("courseTitle") %></h5>
    <p class="card-text" style="text-align:justify"><%= rs.getString("courseDescription") %></p>
    <a href="#" class="card-link" style="text-decoration:none;"><%= rs.getString("instructorName") %></a>
    <a href="#" class="btn btn-warning btn-sm" style="float:right;">Read More</a>
  </div>
</div>
</div>
		<%
	}
}catch(Exception e)
{
	e.printStackTrace();
}
%>

</div>
</div>
</body>
</html>