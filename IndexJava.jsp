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
String email = request.getParameter("email");
String pass = request.getParameter("password");

if(email.equals("rishur117@gmail.com") && pass.equals("123"))
{
	session = request.getSession();
	session.setAttribute("email", email);
	response.sendRedirect("Admin/Admin.jsp");
}
else
{
	/* RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
	rd.include(request,response); */
	
	try{
		Connection dbs = Conn.getConn();
		String query = "select * from admission where email=? and password=?";
		PreparedStatement ps = dbs.prepareStatement(query);
		ps.setString(1,email);
		ps.setString(2,pass);
		
		ResultSet set = ps.executeQuery();
		
			if(set.next())
			{
				session = request.getSession();
				session.setAttribute("email", email);
				response.sendRedirect("student/StudentHome.jsp");
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
				rd.include(request,response);
			}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
}
%>
</body>
</html>