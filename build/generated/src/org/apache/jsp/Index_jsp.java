package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Controller.UserDB;
import Model.User;
import Controller.BookDB;
import Controller.BookDB;
import java.util.*;
import Model.Book;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <meta\r\n");
      out.write("            name=\"viewport\"\r\n");
      out.write("            content=\"width=device-width, initial-scale=1, shrink-to-fit=no\"\r\n");
      out.write("            />\r\n");
      out.write("        <title>Document</title>\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\"\r\n");
      out.write("            integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("            />\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Nunito&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("        <!--Css lib-->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Index.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Container-right.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/SideBar.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/TopBar.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/DashBoard.css\" />\r\n");
      out.write("\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://kit.fontawesome.com/e96465b91f.js\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            type=\"text/css\"\r\n");
      out.write("            href=\"https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css\"\r\n");
      out.write("            />\r\n");
      out.write("    </head>\r\n");
      out.write("    <!-- ----------------------------------------------------------------------------------------------------------------------- -->\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"wrapper\">\r\n");
      out.write("            <!-- SideBar -->\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/sideBar.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-right\">\r\n");
      out.write("                <!-- Topbar -->\r\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/topBar.jsp", out, false);
      out.write("\r\n");
      out.write("                ");

                    List<User> bl = UserDB.getAllUser();
                
      out.write("\r\n");
      out.write("                ");
 for (int i = 0; i < bl.size(); i++) {
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td> ");
      out.print( bl.get(i).toString());
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("                <!--Content-->\r\n");
      out.write("                ");

                    if (request.getParameter("value") == null) {
                
      out.write("\r\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/dashboard.jsp", out, false);
      out.write("\r\n");
      out.write("                ");
 } else if (request.getParameter("value").equalsIgnoreCase("books")) {
                
      out.write("\r\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/books.jsp", out, false);
      out.write("\r\n");
      out.write("                ");
 } else if (request.getParameter("value").equalsIgnoreCase("users")) {
                
      out.write("\r\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/users.jsp", out, false);
      out.write("\r\n");
      out.write("                ");
 } else if (request.getParameter("value").equalsIgnoreCase("orders")) {
                
      out.write("\r\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/orders.jsp", out, false);
      out.write("\r\n");
      out.write("                ");
 }
                
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- Boot strap js -->\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"\r\n");
      out.write("            integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"\r\n");
      out.write("            integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\"\r\n");
      out.write("            integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("\r\n");
      out.write("        <script\r\n");
      out.write("            type=\"text/javascript\"\r\n");
      out.write("            src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js\"\r\n");
      out.write("        ></script>\r\n");
      out.write("        <script\r\n");
      out.write("            type=\"text/javascript\"\r\n");
      out.write("            src=\"https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js\"\r\n");
      out.write("        ></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Table data -->\r\n");
      out.write("        ");

            if (request.getParameter("value") == null) {
        
      out.write("\r\n");
      out.write("        ");
 } else if (request.getParameter("value").equalsIgnoreCase("books")) {
        
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/dataComponents/books.jsp", out, false);
      out.write("\r\n");
      out.write("        ");
 } else if (request.getParameter("value").equalsIgnoreCase("users")) {
        
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/users.jsp", out, false);
      out.write("\r\n");
      out.write("        ");
 } else if (request.getParameter("value").equalsIgnoreCase("orders")) {
        
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/orders.jsp", out, false);
      out.write("\r\n");
      out.write("        ");
 }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
