<%@page import="com.databases.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/bootstrap.js"></script>
<%@include file="AdminNavbar.jsp" %>
</head>
<body>
<div class="container-fluid">
    <h2>Uploaded Trainer Images</h2>
    <%
        try {
            Connection dbs = Conn.getConn();
            String query = "select * from trainer";
            PreparedStatement st = dbs.prepareStatement(query);
            ResultSet rs = st.executeQuery();
    %>
    <table style="width:100%" class="table-bordered">
        <tr>
            <th>Name</th>
            <th>Skills</th>
            <th>Experience</th>
            <th>Image</th>
            <th>Path</th>
        </tr>
        <%
            while (rs.next()) {
            	 String name = rs.getString("name");
            	 String skill = rs.getString("skill");
            	 String exp = rs.getString("experience");
                String filename = rs.getString("filename");
                String path = rs.getString("path");
        %>
        <tr>
        <td><%=name %></td>
        <td><%=skill %></td>
        <td><%=exp %></td>
            <td><img src="<%=request.getContextPath() + "/" + filename%>" width="150" height="150"/></td>
            <td><%=path%></td>
        </tr>
        <% } %>
    </table>
    <%
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
    </div>
</body>
</html>
