<%@page import="java.util.Map"%>
<%@page import="Model.Cart"%>
<%@page import="Controller.BookDB"%>
<%@page import="Controller.TransactionDB"%>
<%@page import="Model.Book"%>
<%@page import="Model.Order"%>
<%@page import="Model.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>


<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <title>Nerd</title>
        <!-- Bootstrap CSS -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            />

        <link rel="stylesheet" href="User/css/index.css" />
        <link rel="stylesheet" href="User/css/slider.css" />
        <link rel="stylesheet" href="User/css/cart.css" />


        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>

        <!-- Nav bar -->
        <jsp:include page="./components/navBar.jsp"/>

        <div class="latest">
        </div>

        <%
            String uid =(String) session.getAttribute("ID");
            TransactionDB db = new TransactionDB();
            ArrayList<Transaction> ls = db.getByuID(uid);
                
        %>


        <div class="container cart p-0">
            <div class="d-flex justify-content-start align-items-center">
                <h5><a href="Home">Home</a></h5><h1 class="ml-2">My Order</h1>
            </div>
            <div class="content">
                <s:if test="%{#session.ID != null}">
                    <div class="items">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID Order</th>
                                    <th>Date</th>
                                    <th>Cart</th>
                                    <th>Total</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (int i = ls.size() -1; i > 0; i--) {
                                %>
                            <form action="removeCart" method="post">
                                <tr>
                                    <td><a href="orderDetail?id=<%=ls.get(i).gettID()%>" class="" style="color: rgb(0, 127, 240);"><%=ls.get(i).gettID()%></a></td>
                                    <td><%=ls.get(i).gettDate()%></td>
                                    <td><%=ls.get(i).getCart().toString()%></td>
                                    <td>$<%=ls.get(i).getTotal() / 20000%></td>
                                    <%
                                        if(ls.get(i).isStatus()) {
                                    %>
                                    <td><a href="orderDetail?id=<%=ls.get(i).gettID()%>" class="badge badge-success">Success</a></td>
                                    <% 
                                        }
                                    %>
                                    <%
                                        if(!ls.get(i).isStatus()) {
                                    %>
                                    <td><a href="orderDetail?id=<%=ls.get(i).gettID()%>" class="badge badge-warning">Pending</a></td>
                                    <% 
                                        }
                                    %>

                                </tr>
                            </form>
                            <%}
                            %>
                            </tbody>
                        </table>
                    </div>
                    <div class="cart-sub container p-0">
                        <div class="row d-flex">
                            <div class="cart-sell col-sm-12 col-md-12 col-lg-7 col-xl-7">
                                <jsp:include page="./components/sliderOffer.jsp"/>
                            </div>
                        </div>
                    </div>
                </s:if>
            </div>
        </div>




        <!-- footer -->
        <jsp:include page="./components/footer.jsp"/>

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>

        <script src="User/js/index.js"></script>
        <script src="User/js/navBar.js"></script>
    </body>
</html>
