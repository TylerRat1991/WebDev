<%-- 
    Document   : Home
    Created on : Apr 25, 2018, 9:32:31 PM
    Author     : Tyler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>iFindBooks.com</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <figure><img src="images/logo.png" /></figure>
    </head>
    <body>
        <p>
            <a href="logIn.jsp"> <button type="button" id="logIn">Login/Sign Up</button></a>
        </p>
        <div>
            <h1>SEARCH A BOOK</h1>
            <form action="processSearch.jsp" method="post">
                <button type="submit" id="btnhome">Search Books</button>
            </form>
        </div>
    </body>
</html>