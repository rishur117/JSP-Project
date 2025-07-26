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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/bootstrap.js"></script>
</head>
<body>
<div class="container-fluid">
<%
session = request.getSession();
String email = (String)session.getAttribute("email").toString();

try{
	Connection dbs = Conn.getConn();
	String query = "select course,fee,duration from admission where email=?";
	PreparedStatement ps = dbs.prepareStatement(query);
	ps.setString(1,email);
	ResultSet rs = ps.executeQuery();
	%>
	<table style="width:100%" class="table-bordered">
	<thead>
        <tr>
            <th>Course</th>
            <th>Fees</th>
            <th>Duration</th>
        </tr>
        </thead>
	<tbody>
	<%
	while(rs.next())
	{%>
	<tr>
		<td><%=rs.getString("course") %></td>
		<td><%=rs.getString("fee") %></td>
		<td><%=rs.getString("duration") %></td>
	</tr>
	<%}
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