<%-- 
    Document   : logIn
    Created on : Apr 25, 2018, 9:33:52 PM
    Author     : Tyler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <figure><img src="images/logo.png" /></figure>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ProcessLogin.jsp">
            <div>
            <input type="text" id="usernameLgn" placeholder="Enter username" name="usernameLgn"/>
            <br/>
            <input type="text" id="passwordLgn" placeholder="Enter password" name="passwordLgn"/>
            <br/><br>
            <button type="submit" id="btnlgn">Submit</button>
            <br/>
            </div>
            <a href="signUp.jsp">Create an account</a>
        </form>
    </body>
</html>