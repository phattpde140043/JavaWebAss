package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import Model.Cart;
import Controller.BookDB;
import Controller.TransactionDB;
import Model.Book;
import Model.Order;
import Model.Transaction;
import java.util.ArrayList;
import java.util.ArrayList;
import java.sql.Date;
import java.util.Calendar;

public final class MyOrder_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_if_test.release();
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"User/css/index.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"User/css/slider.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"User/css/cart.css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- Nav bar -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./components/navBar.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"latest\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");

            String uid =(String) session.getAttribute("ID");
            TransactionDB db = new TransactionDB();
            ArrayList<Transaction> ls = db.getByuID(uid);
                
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container cart p-0\">\n");
      out.write("            <div class=\"d-flex justify-content-start align-items-center\">\n");
      out.write("                <h5><a href=\"Home\">Home</a></h5><h1 class=\"ml-2\">My Order</h1>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                ");
      //  s:if
      org.apache.struts2.views.jsp.IfTag _jspx_th_s_if_0 = (org.apache.struts2.views.jsp.IfTag) _jspx_tagPool_s_if_test.get(org.apache.struts2.views.jsp.IfTag.class);
      _jspx_th_s_if_0.setPageContext(_jspx_page_context);
      _jspx_th_s_if_0.setParent(null);
      _jspx_th_s_if_0.setTest("%{#session.ID != null}");
      int _jspx_eval_s_if_0 = _jspx_th_s_if_0.doStartTag();
      if (_jspx_eval_s_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_s_if_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_th_s_if_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_s_if_0.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                    <div class=\"items\">\n");
          out.write("                        <table class=\"table\">\n");
          out.write("                            <thead>\n");
          out.write("                                <tr>\n");
          out.write("                                    <th>ID Order</th>\n");
          out.write("                                    <th>Date</th>\n");
          out.write("                                    <th>Cart</th>\n");
          out.write("                                    <th>Total</th>\n");
          out.write("                                    <th>Status</th>\n");
          out.write("                                </tr>\n");
          out.write("                            </thead>\n");
          out.write("                            <tbody>\n");
          out.write("                                ");
for (int i = ls.size() -1; i > 0; i--) {
                                
          out.write("\n");
          out.write("                            <form action=\"removeCart\" method=\"post\">\n");
          out.write("                                <tr>\n");
          out.write("                                    <td><a href=\"orderDetail?id=");
          out.print(ls.get(i).gettID());
          out.write("\" class=\"badge badge-warning\">");
          out.print(ls.get(i).gettID());
          out.write("</td>\n");
          out.write("                                    <td>");
          out.print(ls.get(i).gettDate());
          out.write("</td>\n");
          out.write("                                    <td>");
          out.print(ls.get(i).getCart().toString());
          out.write("</td>\n");
          out.write("                                    <td>$");
          out.print(ls.get(i).getTotal() / 20000);
          out.write("</td>\n");
          out.write("                                    ");

                                        if(ls.get(i).isStatus()) {
                                    
          out.write("\n");
          out.write("                                    <td><a href=\"orderDetail?id=");
          out.print(ls.get(i).gettID());
          out.write("\" class=\"badge badge-success\">Success</a></td>\n");
          out.write("                                    ");
 
                                        }
                                    
          out.write("\n");
          out.write("                                    ");

                                        if(!ls.get(i).isStatus()) {
                                    
          out.write("\n");
          out.write("                                    <td><a href=\"orderDetail?id=");
          out.print(ls.get(i).gettID());
          out.write("\" class=\"badge badge-warning\">Pending</a></td>\n");
          out.write("                                    ");
 
                                        }
                                    
          out.write("\n");
          out.write("\n");
          out.write("                                </tr>\n");
          out.write("                            </form>\n");
          out.write("                            ");
}
                            
          out.write("\n");
          out.write("                            </tbody>\n");
          out.write("                        </table>\n");
          out.write("                    </div>\n");
          out.write("                    <div class=\"cart-sub container p-0\">\n");
          out.write("                        <div class=\"row d-flex\">\n");
          out.write("                            <div class=\"cart-sell col-sm-12 col-md-12 col-lg-7 col-xl-7\">\n");
          out.write("                                ");
          org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./components/sliderOffer.jsp", out, false);
          out.write("\n");
          out.write("                            </div>\n");
          out.write("                        </div>\n");
          out.write("                    </div>\n");
          out.write("                ");
          int evalDoAfterBody = _jspx_th_s_if_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_s_if_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
      }
      if (_jspx_th_s_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_s_if_test.reuse(_jspx_th_s_if_0);
        return;
      }
      _jspx_tagPool_s_if_test.reuse(_jspx_th_s_if_0);
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- footer -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./components/footer.jsp", out, false);
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
      out.write("        <script src=\"User/js/index.js\"></script>\n");
      out.write("        <script src=\"User/js/navBar.js\"></script>\n");
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
