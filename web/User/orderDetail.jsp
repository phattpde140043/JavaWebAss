<%@page import="Controller.UserDB"%>
<%@page import="Model.User"%>
<%@page import="java.util.List"%>
<%@page import="Model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.TransactionDB"%>
<%@page import="Model.Transaction"%>
<%@page import="Controller.CategoryDB"%>
<%@page import="Controller.BookDB"%>
<%@page import="Model.Book"%>
<%@page import="Model.Book"%>
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
        <link rel="stylesheet" href="User/css/orderDetail.css" />

        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- Nav bar -->
        <jsp:include page="./components/navBar.jsp"/>


        <div class="latest">
        </div>

        <%
            TransactionDB db = new TransactionDB();
            ArrayList<Transaction> tl = new ArrayList<Transaction>();
            tl = db.getBytID(request.getParameter("id"));
            
            User u = tl.get(0).getUs();

            List<Order> ol = tl.get(0).getCart();
        %>

        <div class="container p-0">
            <div class="title d-flex justify-content-between align-items-center">

                <!--//transaction ID-->
                <h1>Order details #<span><%=tl.get(0).gettID()%></span> -
                    <%
                        if(tl.get(0).isStatus()){
                    %>
                    <span><a class="badge badge-success">Success</a></span>
                    <% } else { %>
                    <span><a class="badge badge-warning">Pending</a></span>
                    <% } %>

                </h1>
                <!--transaction date-->
                <p class="date">Purchase day: <%=tl.get(0).gettDate()%></p>
            </div>

            <div class="order-info d-flex justify-content-between">
                <div class="owner col-lg-4 p-0">
                    <h2>User address</h2>

                    <div class="box">

                        <!--name-->
                        <p class="name font-weight-bold"><%=u.getuName()%></p>

                        <!--address-->
                        <p class="address">address: <%=u.getuAddress()%></p>

                        <!--phone-->
                        <p class="phone">phone: <%=u.getuPhone()%></p>
                    </div>
                </div>

                <div class="delivery col-lg-4 p-0">
                    <h2>delivery</h2>

                    <div class="box">

                        <!--date-->
                        <p class="name"><%=tl.get(0).gettDate()%></p>

                        <!--fee-->
                        <p class="fee">Fee : $5</p>
                    </div>
                </div>

                <div class="payment col-lg-4 p-0">
                    <h2>payment</h2>

                    <div class="box">

                        <!--payment-->
                        <p class="payment">cash on delivery</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Subprice</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (int i = 0; i < ol.size(); i++) {
                                Book b = ol.get(i).getBook();
                        %>
                        <tr>
                            <td>
                                <img src="<%=b.getbCover()%>">
                                <div>
                                    <span><%=b.getbName()%></span>
                                    <span>Sku: <%=b.getbId()%></span>
                                </div>
                            </td>
                            <td><%=b.getbPrice() / 20000%></td>
                            <td><%=ol.get(i).gettQuatity()%></td>
                            <td>$<%=(ol.get(i).gettQuatity() * b.getbPrice()) / 20000%></td>
                        </tr>
                        <%}
                        %>
                    </tbody>
                </table>
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

            <script src="User/js/hover.js"></script>
            <script src="User/js/navBar.js"></script>
    </body>
</html>
