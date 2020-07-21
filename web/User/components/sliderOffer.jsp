<%-- 
    Document   : slider
    Created on : Jul 6, 2020, 10:45:20 AM
    Author     : Admin
--%>

<%@page import="Model.Category"%>
<%@page import="Controller.CategoryDB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Book"%>
<%@page import="Model.Book"%>
<%@page import="Controller.BookDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="User/css/slider.css" />
<div class="slider container p-0">
    <%
        int min = 50;
        int max = 100;
        double random_double = Math.random() * (max - min + 1) + min;
        String[] category = (String[]) session.getAttribute("category");
        String[] categoryID = (String[]) session.getAttribute("categoryID");
        int i = (Integer) session.getAttribute("i");

        ArrayList<Book> bl = new ArrayList<>();
        if (request.getParameter("value") != null) {
            bl = BookDB.getByCategoryID(request.getParameter("value"));
        } else {
            bl = BookDB.getByCategoryID(categoryID[i]);
        }
        double size = bl.size();

        int pageElem = 5;
        int pagination = (int) Math.ceil(size / 5.0);
    %>
    <div class="p-0 m-0">
        <!-- slider real -->
        <div id="carouselExampleIndicators<%=random_double%>" class="carousel slide p-5" data-ride="carousel" data-pause="hover" data-interval="500000">

            <h2 class="pb-3 category">You may be interested in ... </h2>

            <ol class="carousel-indicators p-0 hover">
                <li data-target="#carouselExampleIndicators<%=random_double%>" data-slide-to="0" class="active"></li>
                    <% if (pagination > 1)
                            for (int j = 0; j < pagination - 1; j++) {%>
                <li data-target="#carouselExampleIndicators<%=random_double%>" data-slide-to="<%=j + 1%>"></li>
                    <% }%>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row d-flex justify-content-center">
                        <%
                            if (bl.size() >= 5)
                                for (int j = 1; j < 4; j++) {
                        %>
                        <div class="col-xs-11 col-md-11 col-lg-4 p-0 m-0" style="margin: 0">
                            <div class="d-flex justify-content-center flex-column box">
                                <img src="<%=bl.get(j).getbCover()%>" alt="" class="w-100">
                                    <p class="title p-0 m-0"><a href="products?id=<%=bl.get(j).getbId()%>"><%=bl.get(j).getbName()%></a></p>
                                    <div class="overlay"></div>
                                    <div class="button w-100 p-0 m-0">
                                        <a href="cart?bid=<%=bl.get(j).getbId()%>" id="addToCart" class="w-100 p-0" onclick="change()" onclick="change()"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                                <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                                <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                                <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                            </svg></a>
                                    </div>
                            </div>
                        </div>
                        <% }
                        else
                            for (int j = 0; j < bl.size(); j++) {
                        %>
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex">
                            <div class="d-flex justify-content-center flex-column box">
                                <img src="<%=bl.get(j).getbCover()%>" alt="" class="w-100">
                                    <p class="title p-0 m-0"><a href="products?id=<%=bl.get(j).getbId()%>"><%=bl.get(j).getbName()%></a></p>
                                    <div class="overlay"></div>
                                    <div class="button w-100 p-0 m-0">
                                        <a href="cart?bid=<%=bl.get(j).getbId()%>" id="addToCart" class="w-100 p-0" onclick="change()" onclick="change()"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                                <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                                <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                                <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                            </svg></a>
                                    </div>
                            </div> 
                        </div>
                        <%
                            }%>
                    </div>
                </div> 

                <!--another carousel item-->
                <% if (pagination > 1)
                        for (int j = 1; j < pagination; j++) {%>
                <div class="carousel-item">
                    <div class="row d-flex justify-content-center">
                        <%
                            if ((bl.size() - (pageElem * j)) >= 5)
                                for (int k = 0; k < 5; k++) {
                        %>
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0">
                            <div class="d-flex justify-content-center flex-column box">
                                <img src="<%=bl.get(k + (pageElem * j)).getbCover()%>" alt="" class="w-100">
                                    <p class="title p-0 m-0"><a href="products?id=<%=bl.get(k + (pageElem * j)).getbId()%>"><%=bl.get(k + (pageElem * j)).getbName()%></a></p>
                                    <div class="overlay"></div>
                                    <div class="button w-100 p-0 m-0">
                                        <a href="cart?bid=<%=bl.get(j).getbId()%>" id="addToCart" class="w-100 p-0" onclick="change()" onclick="change()"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                                <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                                <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                                <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                            </svg></a>
                                    </div>
                            </div>
                        </div>
                        <% }
                        else
                            for (int k = 0; k < (bl.size() - (pageElem * j)); k++) {
                        %>
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0">
                            <div class="d-flex justify-content-center flex-column box">
                                <img src="<%=bl.get(k + (pageElem * j)).getbCover()%>" alt="" class="w-100">
                                    <p class="title p-0 m-0"><a href="products?id=<%=bl.get(k + (pageElem * j)).getbId()%>"><%=bl.get(k + (pageElem * j)).getbName()%></a></p>
                                    <div class="overlay"></div>
                                    <div class="button w-100 p-0 m-0">
                                        <a href="cart?bid=<%=bl.get(j).getbId()%>" id="addToCart" class="w-100 p-0" onclick="change()" onclick="change()"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                                <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                                <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                                <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                            </svg></a>
                                    </div>
                            </div>
                        </div>
                        <%
                            }%>
                    </div>
                </div>
                <% }%>


            </div>
            <a class="carousel-control-prev d-flex justify-content-start hover mt-5" href="#carouselExampleIndicators<%=random_double%>" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next d-flex justify-content-end hover mt-5" href="#carouselExampleIndicators<%=random_double%>" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>
