package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"User/css/login.css\" />\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <nav class=\"navbar navbar-light bg-transparent\">\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                        <img src=\"User/img/LOGO.png\" alt=\"logo\" loading=\"lazy\" id=\"logo\">\n");
      out.write("                    </a>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"container d-flex justify-content-center\">\n");
      out.write("                <div class=\"form-login\">\n");
      out.write("                    <h1 class=\"font-weight-bold\">Sign In</h1>\n");
      out.write("\n");
      out.write("                    <!--Form login here !!!-->\n");
      out.write("\n");
      out.write("                    <form class=\"needs-validation\" novalidate action=\"\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"label-inside\" for=\"exampleInputEmail1\">Email address</label>\n");
      out.write("                            <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" required>\n");
      out.write("                            <div class=\"valid-feedback\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"label-inside\" for=\"exampleInputPassword1\">Password</label>\n");
      out.write("                            <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" required>\n");
      out.write("                            <div class=\"valid-feedback\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <button type=\"submit\" class=\"mt-2 btn w-100 mb-2 mt-4\">Sign In</button>\n");
      out.write("                        <div class=\"d-flex justify-content-between align-items-center\">\n");
      out.write("                            <div class=\"form-group form-check p-0\">\n");
      out.write("                                <input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\" required>\n");
      out.write("                                <label class=\"form-check-label\" for=\"exampleCheck1\">Check me out</label>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"#\">Need help?</a>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    <div class=\"d-flex justify-content-center sub-img\">\n");
      out.write("                        <img src=\"User/img/gift.svg\"  alt=\"logo\" loading=\"lazy\" id=\"logo\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"divider\"></div>\n");
      out.write("            \n");
      out.write("            <footer>\n");
      out.write("                <div class=\"container p-5\">\n");
      out.write("                <p class=\"mb-5\" style=\"font-size: 1rem;\">\n");
      out.write("                    <a class=\"footer-top-a\" href=\"#\">Questions? Contact us.</a>\n");
      out.write("                </p>\n");
      out.write("                <ul class=\"d-flex col-lg-8 justify-content-between p-0\">\n");
      out.write("                    <li><a href=\"#\">Gift Card Terms</a></li>\n");
      out.write("                    <li><a href=\"#\">Terms of Use</a></li>\n");
      out.write("                    <li><a href=\"#\">Privacy Statement</a></li>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("\n");
      out.write("        </div>\n");
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
      out.write("        <script>\n");
      out.write("// Example starter JavaScript for disabling form submissions if there are invalid fields\n");
      out.write("            (function () {\n");
      out.write("                'use strict';\n");
      out.write("                window.addEventListener('load', function () {\n");
      out.write("                    // Fetch all the forms we want to apply custom Bootstrap validation styles to\n");
      out.write("                    var forms = document.getElementsByClassName('needs-validation');\n");
      out.write("                    // Loop over them and prevent submission\n");
      out.write("                    var validation = Array.prototype.filter.call(forms, function (form) {\n");
      out.write("                        form.addEventListener('submit', function (event) {\n");
      out.write("                            if (form.checkValidity() === false) {\n");
      out.write("                                event.preventDefault();\n");
      out.write("                                event.stopPropagation();\n");
      out.write("                            }\n");
      out.write("                            form.classList.add('was-validated');\n");
      out.write("                        }, false);\n");
      out.write("                    });\n");
      out.write("                }, false);\n");
      out.write("            })();\n");
      out.write("        </script>\n");
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
