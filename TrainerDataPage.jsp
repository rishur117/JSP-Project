<%@page import="com.databases.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainer Data Page</title>
</head>
<body>
<div class="container-fluid mb-4 mt-4">
<div class="row">
<%
try{
	Connection dbs = Conn.getConn();
    String query = "select * from trainer";
    PreparedStatement st = dbs.prepareStatement(query);
    ResultSet rs = st.executeQuery();
	while(rs.next())
	{
		%>
		<div class="col-lg-4 col-sm-6 col-12 mt-3">
			<div class="card d-flex justify-content-center" style="width: 100%; height:100%; border-radius:5%;">
  <img src="<%=request.getContextPath() + "/" + rs.getString("filename")%>" width="150" height="200" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%=rs.getString("name") %></h5>
    <p class="card-text"><%=rs.getString("skill") %></p>
    <p class="card-text">Experience : <%=rs.getString("experience") %></p>
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