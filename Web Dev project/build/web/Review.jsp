<%-- 
    Document   : Review
    Created on : Apr 26, 2018, 11:12:49 PM
    Author     : p-did
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
         <script src="js/reviewJava.js" type="text/JavaScript"></script>
        <title>JSP Page</title>
    </head>
    <body>
            
        <div id="reviewBook">
                        
        </div>
        <form>
            <%if (session.getAttribute("name") != null){ %>
             <input type="text" id="comment" placeholder="Comment" />
            <br/>
            <button type="button" id="commentButton">Submit</button>
          <%  }      else{ %> You need to be signed in to comment <%
                
}%>
            
        </form>
        <div id="comments">
            <h1> <%if (session.getAttribute("name") != null){ %>
                <%= session.getAttribute("name") %>
          <%  }      else{
                
}%> </h1>
            <br/>
            <div id="userCom">
            
            </div>
            
            <p id="philCom">
            <h1>Phil</h1>
            <br/>
            Wow i loved this book so much it was great
            <br/>
            
            <p id="megCom">
            <h1>Meg</h1>
            <br/>
            OMG best book of all time.
        </div>
    </body>
</html>
