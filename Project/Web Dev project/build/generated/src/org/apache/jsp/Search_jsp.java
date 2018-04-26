package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Book Search</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\n");
      out.write("        <script src=\"js/javascript.js\" type=\"text/JavaScript\"></script>\n");
      out.write("        <script>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("                 var mysql = require('mysql');\n");
      out.write("                 var con = mysql.createConnection({\n");
      out.write("                 host: \"localhost\",\n");
      out.write("                 user: \"root\",\n");
      out.write("                 password: \"root\",\n");
      out.write("                 database: \"webdevproject\"\n");
      out.write("                 });\n");
      out.write("                 \n");
      out.write("                 con.connect(function(err) {\n");
      out.write("                 if (err) throw err;\n");
      out.write("                 con.query(\"SELECT * FROM search\", function (err, result, fields) {\n");
      out.write("                 if (err) throw err;\n");
      out.write("                 console.log(result);\n");
      out.write("                 });\n");
      out.write("                });\n");
      out.write(" /*              var node =document.getElementsByTagName(h1);  \n");
      out.write("                console.log(node);\n");
      out.write("                   var keyword = document.getElementById(\"search1\").val();\n");
      out.write("         $.get(\"https://www.googleapis.com/books/v1/volumes?key=AIzaSyA7ECB-GNIZWJIc_LHsT9mqTXYqK9fntAk&q=\"+ keyword).done(\n");
      out.write("                function(response){\n");
      out.write("                    var books= response;                  \n");
      out.write("                    for (var i = 0; i<books.items.length; i++)\n");
      out.write("                    {\n");
      out.write("                       var img=$(\"<img><img>\");\n");
      out.write("                       img.attr(\"src\",books.items[i].volumeInfo.imageLinks.thumbnail);\n");
      out.write("                        $(\"#Book\").append(\"<br/> <br/>\" + books.items[i].volumeInfo.title + \"<br/> <br/>\");\n");
      out.write("                        \n");
      out.write("                        $(\"#Book\").append(img);\n");
      out.write("                        $(\"#Book\").append(\"<br/> Authors: \" + books.items[i].volumeInfo.authors + \"<br/> <br/>\");\n");
      out.write("                        $(\"#Book\").append( \"Published by: \" + books.items[i].volumeInfo.publisher + \"<br/> <br/>\");\n");
      out.write("                        $(\"#Book\").append( \"Published Date: \" + books.items[i].volumeInfo.publishedDate + \"<br/> <br/>\");\n");
      out.write("                    }\n");
      out.write("                }); */\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("  \n");
      out.write("        <div>\n");
      out.write("            <p>\n");
      out.write("            <button type=\"button\" id=\"logIn\">LogIn/SignUp</button>\n");
      out.write("            </p>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <h1>Search A Book!</h1>\n");
      out.write("            <br/>\n");
      out.write("            <input type=\"text\" id=\"text\" placeholder=\"Search a Book\"/>\n");
      out.write("            <button type=\"button\" id=\"btn\">Submit</button>        \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"Book\">\n");
      out.write("            <h1> hello ");
      out.print( session.getAttribute("srch"));
      out.write("</h1>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
