<%-- 
    Document   : ProcessLogin
    Created on : Apr 25, 2018, 3:59:41 PM
    Author     : p-did
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           try{

        java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webdevproject",
        "root","root");
       out.println("database opened successfully");
       
       
       String Username = request.getParameter("usernameLgn");
       String Password = request.getParameter("passwordLgn");
       String lgdIn = "lgdin";
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select * from user where Username='" + Username + "' AND Password='" + Password + "'");
      
       if(!rs.next())
       {
           
           String error = "username or password doesn't exist";
           session.setAttribute("errorLgn", error);
           response.sendRedirect("logIn.jsp");
           session.setAttribute("lgdIn", lgdIn);
       }
       else{
           response.sendRedirect("Search.jsp"); 
       }
       
           }
       catch(SQLException e)
       {
        out.println("SQL Exception caught: " + e.getMessage());
       }
       %>
        
    </body>
</html>
