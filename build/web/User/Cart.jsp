<%@page import="java.util.Map"%>
<%@page import="Model.Cart"%>
<%@page import="Controller.BookDB"%>
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
            Cart cart = (Cart) session.getAttribute("CART");
            Transaction t = (Transaction) session.getAttribute("TRANSACTION");
            ArrayList<Book> bl = new ArrayList<Book>();
            ArrayList<Integer> quantity = new ArrayList<Integer>();
            if (cart != null) {
                Map<String, Integer> items = cart.getItems();

                if (items != null) {
                    for (String bid : items.keySet()) {
                        bl.add(BookDB.getById(bid));
                    }
                }

                if (items != null) {
                    for (int value : items.values()) {
                        quantity.add(value);
                    }
                }
            }
            double total = 0;
        %>


        <div class="container cart p-0">
            <div class="d-flex justify-content-start align-items-center">
                <h5><a href="Home">Home</a></h5><h1 class="ml-2">Cart</h1>
            </div>
            <div class="content">
                <s:if test="%{#session.CART != null}">
                    <div class="items">
                        <table class="table">
                            <% 
                                if(cart.getItems() == null){
                            %>
                            <h2>Your cart is currently empty!</h2>
                            <%
                            }
                            %>
                            <thead>
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Subtotal</th>
                                    <th scope="col">#</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (int i = 0; i < bl.size(); i++) {
                                %>
                            <form action="removeCart" method="post">
                                <tr>
                                    <td><img src="<%=bl.get(i).getbCover()%>" width="64px"> <input type="text" name="bid" class="d-none" value="<%=bl.get(i).getbId()%>" readonly></td>
                                    <td><%=bl.get(i).getbName()%></td>
                                    <td>$<%=bl.get(i).getbPrice() / 20000%></td>
                                    <td><%=quantity.get(i)%></td>
                                    <%
                                        double subTotal = bl.get(i).getbPrice() * quantity.get(i);
                                        total += subTotal;
                                    %>
                                    <td>$<%=subTotal / 20000%></td>
                                    <td><input type="submit" class="btn btn-danger" value="delete"></td>
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
                            <div class="cart-total col-sm-12 col-md-12 col-lg-5 col-xl-5">
                                <h2>Cart totals</h2>

                                <table class="">
                                    <tbody>
                                        <tr class="d-flex justify-content-between">
                                            <th>Subtotal</th>
                                            <td>
                                                <span>$<%=total / 20000%></span>
                                            </td>
                                        </tr>
                                        <tr class="d-flex justify-content-between">
                                            <th>Shipping</th>
                                            <td>
                                                <span>$5</span>
                                            </td>
                                        </tr>
                                        <tr class="d-flex justify-content-between">
                                            <th>Total</th>
                                            <td>
                                                <span>$<%=(total / 20000) + 5%></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="check-out w-100">
                                    <%
                                        Date d = new Date(Calendar.getInstance().getTime().getTime());

                                        ArrayList<Order> order = new ArrayList<>();
                                        for (int i = 0; i < bl.size(); i++) {
                                            Order o = new Order(bl.get(i).getbId(), quantity.get(i));
                                            order.add(o);
                                        }
                                        t.setCart(order);
                                    %>
                                    <form action="checkout" method="post">
                                        <input type="submit" class="btn btn-primary w-100" value="Proceed to checkout">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </s:if>
                <s:if test="%{#session.CART == null}">
                    <h2>Your cart is currently empty!</h2>
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
