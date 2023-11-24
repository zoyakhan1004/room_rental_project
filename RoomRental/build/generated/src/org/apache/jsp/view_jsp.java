package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import db.DBConnector;
import java.sql.Statement;
import java.sql.ResultSet;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>\n");
      out.write("            Body {  \n");
      out.write("  font-family: Calibri, Helvetica, sans-serif;  \n");
      out.write("  background-color: #828a95;  \n");
      out.write("}  \n");
      out.write("            .container {   \n");
      out.write("        padding-left: 165px;\n");
      out.write("    padding-top: 24px;\n");
      out.write("    padding-right: 130px;\n");
      out.write("    padding-bottom: 24px;\n");
      out.write("    \n");
      out.write("        background-color: #181d27;\n");
      out.write("            color:white;\n");
      out.write("            border-radius: 15px;\n");
      out.write("  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);\n");
      out.write("    }\n");
      out.write("    table{\n");
      out.write("        width:1200px;\n");
      out.write("        margin:100px 100px 100px -80px;\n");
      out.write("        border: 3px solid #f1f1f1;\n");
      out.write("        border-radius: 15px;\n");
      out.write("  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);\n");
      out.write("    }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String username = (String)session.getAttribute("username");
            if(username==null){
                response.sendRedirect("loginSeller.html");
            }
          
      out.write("\n");
      out.write("          ");

          try
        {
            ResultSet rs= null;
            Statement st= DBConnector.getStatement();
            String query=  "SELECT * from hostels where username='"+username+"'";
            rs= st.executeQuery(query);
            
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"container\">\n");
      out.write("            <table width=\"1000\">\n");
      out.write("                <tr>\n");
      out.write("                    <td><b>Name:</b></td>\n");
      out.write("                    <td><b>Address:</b></td>\n");
      out.write("                    <td><b>Pincode:</b></td>\n");
      out.write("                    <td><b>Hostel ID:</b></td>\n");
      out.write("                    <td><b>Contact Number:</b></td>\n");
      out.write("                    <td><b>Number of beds:</b></td>\n");
      out.write("                    <td><b>Type of bed:</b></td>\n");
      out.write("                    <td><b>AC:</b></td>\n");
      out.write("                    <td><b>Fridge:</b></td>\n");
      out.write("                    <td><b>Wi-FI:</b></td>\n");
      out.write("                    <td><b>Geyser:</b></td>\n");
      out.write("                </tr>\n");
      out.write(" \n");
      out.write("        ");

     
     while(rs.next())
     {
         
      out.write("\n");
      out.write("         <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(10));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(11));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(12));
      out.write("</td>\n");
      out.write("         </tr>\n");
      out.write("         ");

        }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
      out.write("\n");
      out.write("        </table>\n");
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
