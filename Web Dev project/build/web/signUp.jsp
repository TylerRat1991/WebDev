<%-- 
    Document   : signUp
    Created on : Apr 25, 2018, 3:54:48 PM
    Author     : p-did
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ProcessSignup.jsp">
            <input type="text" id="usernameSign" placeholder="username" name="usernameSign"/>
            <br/>
            <input type="text" id="passwordSign" placeholder="password" name="passwordSign"/>
            <br/>
            <input type="text" id="firstName" placeholder="firstName" name="firstname"/>
            <br/>
            <input type="text" id="lastName" placeholder="lastName" name="lastname"/>
            <br/>
            <button type="submit" id="btnsign">Submit</button>
        </form>
    </body>
</html>
