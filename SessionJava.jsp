<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session Java</title>
</head>
<body>
<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if(email.equals("rishur117@gmail.com"))
		{
			HttpSession ses = request.getSession();
			ses.setAttribute("user",email);
			response.sendRedirect("WelcomeSession.jsp");
		}
		else
		{
			out.print("<center><h2>Wrong Data Entered \n Please try again</h2></center>");
			RequestDispatcher rd = request.getRequestDispatcher("SessionPage.jsp");
			rd.include(request, response);
		}

%>
</body>
</html>