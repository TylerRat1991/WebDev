package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Review_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <script src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\n");
      out.write("         <script src=\"js/reviewJava.js\" type=\"text/JavaScript\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"reviewBook\">\n");
      out.write("                        \n");
      out.write("        </div>\n");
      out.write("        <form>\n");
      out.write("            <input type=\"text\" id=\"comment\" placeholder=\"Comment\" />\n");
      out.write("            <br/>\n");
      out.write("            <button type=\"button\" id=\"commentButton\">Submit</button>\n");
      out.write("        </form>\n");
      out.write("        <div id=\"comments\">\n");
      out.write("            <h1> ");
 if(session.getAttribute("name") != null){
                        session.getAttribute("name");
            }
            else{
                }
      out.write(" </h1>\n");
      out.write("            <br/>\n");
      out.write("            <div id=\"userCom\">\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <p id=\"philCom\">\n");
      out.write("            <h1>Phil</h1>\n");
      out.write("            <br/>\n");
      out.write("            Wow i loved this book so much it was great\n");
      out.write("            <br/>\n");
      out.write("            \n");
      out.write("            <p id=\"megCom\">\n");
      out.write("            <h1>Meg</h1>\n");
      out.write("            <br/>\n");
      out.write("            OMG best book of all time.\n");
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
