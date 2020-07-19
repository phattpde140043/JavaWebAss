package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta\n");
      out.write("            name=\"viewport\"\n");
      out.write("            content=\"width=device-width, initial-scale=1, shrink-to-fit=no\"\n");
      out.write("            />\n");
      out.write("        <title>Nerd</title>\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\"\n");
      out.write("            integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("            />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/index.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/topBook.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/slider.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Nav bar -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/navBar.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- top book -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/topBook.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- slider -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/slider.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- slider -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/slider.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- slider -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/slider.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- slider -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/slider.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- footer -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script\n");
      out.write("            src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"\n");
      out.write("            integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("        ></script>\n");
      out.write("        <script\n");
      out.write("            src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"\n");
      out.write("            integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("        ></script>\n");
      out.write("        <script\n");
      out.write("            src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"\n");
      out.write("            integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("        ></script>\n");
      out.write("\n");
      out.write("        <script src=\"js/hover.js\"></script>\n");
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
