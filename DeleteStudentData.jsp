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
String stu_id = request.getParameter("stu_id");
try{
	Connection dbs = Conn.getConn();
	String query = "delete from admission where stu_id=?";
	PreparedStatement ps = dbs.prepareStatement(query);
	ps.setString(1, stu_id);
	int i = ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("ViewStudentData.jsp");
	}
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>