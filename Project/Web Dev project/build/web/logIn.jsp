<%-- 
    Document   : logIn
    Created on : Apr 25, 2018, 3:52:24 PM
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
        <form action="ProcessLogin.jsp">
            <input type="text" id="usernameLgn" placeholder="username" name="usernameLgn"/>
            <br/>
            <input type="text" id="passwordLgn" placeholder="password" name="passwordLgn"/>
            <br/>
            <button type="submit" id="btnlgn">Submit</button>
            <br/>
            <a href="signUp.jsp">signUp</a>
        </form>
    </body>
</html>
