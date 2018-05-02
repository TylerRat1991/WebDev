<%-- 
    Document   : Search
    Created on : Apr 25, 2018, 9:45:02 PM
    Author     : Tyler
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
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <figure><img src="images/logo.png" /></figure>
    </head>
    <body>
        <p>
           <%if(session.getAttribute("lgdIn") != null){
            %> <a href="Home.jsp"> <button type="button" id="Logoff">Logoff</button> </a>
            <% session.setAttribute("lgdIn", null); 
            } 
            else{ session.setAttribute("name", null);%>
                <a href="logIn.jsp"> <button type="button" id="logIn">LogIn/Sign Up</button> </a>
                <%}%>
        </p>
        <div>
            <h1>SEARCH A BOOK</h1>
            <input type="text" id="text" placeholder="Enter title or author"/>
            <br>
            <button type="button" id="btn">Search</button>        
        </div>
        <br>
        <div id="Book"></div>
    </body>
</html>