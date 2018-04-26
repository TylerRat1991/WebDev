<%-- 
    Document   : ProcessSignup
    Created on : Apr 25, 2018, 3:59:53 PM
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
       
       
       String username = request.getParameter("usernameSign");
       String password = request.getParameter("passwordSign");
       String firstName = request.getParameter("firstname");
       String lastName = request.getParameter("lastname");
       String lgdIn = "lgdin";
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select * from user where Username='" + username + "'");
      
       if(!rs.next())
       {
           response.sendRedirect("Search.jsp"); 
           st.execute("insert into user(Username, Password, FirstName, LastName) values('" + username + "','" + password + "','" + firstName + "','" + lastName + "')");
           session.setAttribute("lgdIn", lgdIn);
       }
       else{
           
          String error = "user already exists";
          session.setAttribute("errorSign", error);
          response.sendRedirect("SignUp.jsp"); 
       }
       
           }
       catch(SQLException e)
       {
        out.println("SQL Exception caught: " + e.getMessage());
       }
       %>
        
    </body>
</html>
