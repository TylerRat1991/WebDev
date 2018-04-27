<%-- 
    Document   : Home
    Created on : Apr 24, 2018, 11:29:54 AM
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
    </head>
    <body>
        <div>
            
           
            <p>
                <a href="logIn.jsp"> <button type="button" id="logIn">LogIn/SignUp</button> </a>
            </p>
            <img src="img/logo.png" />
            

            <h1>Search A Book!</h1>
            <br/>
           
            <form action="processSearch.jsp" method="post">
                <button type="submit" id="btnhome">Search Books</button>
            </form>
      
        </div>
    </body>
</html>
