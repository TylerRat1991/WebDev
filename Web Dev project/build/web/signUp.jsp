<%-- 
    Document   : signUp
    Created on : Apr 25, 2018, 9:34:02 PM
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
        <div>
        <form action="ProcessSignup.jsp">
            <input type="text" id="usernameSign" placeholder="Create a username" name="usernameSign"/>
            <br/>
            <input type="text" id="passwordSign" placeholder="Create a password" name="passwordSign"/>
            <br/>
            <input type="text" id="firstName" placeholder="First name" name="firstname"/>
            <br/>
            <input type="text" id="lastName" placeholder="Last name" name="lastname"/>
            <br/><br>
            <button type="submit" id="btnsign">Submit</button>
        </div>
        </form>
    </body>
</html>