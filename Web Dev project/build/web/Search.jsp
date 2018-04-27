<%-- 
    Document   : Search
    Created on : Apr 24, 2018, 11:33:20 AM
    Author     : p-did
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Search</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="js/javascript.js" type="text/JavaScript"></script>
    </head>
    <body>
  
        <div>
            <p>
           
                <% 
                    if(session.getAttribute("lgdIn") != null){
            %> <a href="Home.jsp"> <button type="button" id="Logoff">Logoff</button> </a>
            <% session.setAttribute("lgdIn", null); 
                } 
            
                else{ session.setAttribute("name", null);%>
              <a href="logIn.jsp"> <button type="button" id="logIn">LogIn/SignUp</button> </a>
                 <%}%>
            </p>
            
            
            <h1>Search A Book!</h1>
            <br/>
            <input type="text" id="text" placeholder="Search a Book"/>
            <button type="button" id="btn">Search</button>        
        </div>
        
        <div id="Book">
            
        </div>
    </body>
</html>
