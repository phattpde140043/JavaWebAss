<%-- 
    Document   : slider
    Created on : Jul 6, 2020, 10:45:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="User/css/slider.css" />
<div class="slider">
    <%
        int min = 50;
        int max = 100;
        double random_double = Math.random() * (max - min + 1) + min;
        String[] category = (String[])session.getAttribute("category");
        int i = (Integer)session.getAttribute("i");
    %>
    <div class="container p-0 m-0 ">
        <!-- slider real -->
        <div id="carouselExampleIndicators<%=random_double%>" class="carousel slide p-5" data-ride="carousel" data-pause="hover" data-interval="5000">
                <h2 class="pb-3 category"><%=category[i]%></h2>

            <ol class="carousel-indicators p-0 hover">
                <li data-target="#carouselExampleIndicators<%=random_double%>" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators<%=random_double%>" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators<%=random_double%>" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row d-flex justify-content-center">
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/3.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/5.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/10.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/2.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>
                    </div>                      
                </div>
                <div class="carousel-item">
                    <div class="row d-flex justify-content-center">
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/5.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/8.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/4.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/2.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row d-flex justify-content-center">
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/4.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/10.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/2.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/6.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/8.jpg" alt="" class="w-100">
                                <p class="title p-0 m-0"><a href="">card title</a></p>
                                <div class="overlay"></div>
                                <div class="button w-100 p-0 m-0">
                                    <a href="#" class="w-100 p-0"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-bag-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"/>
                                            <path d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"/>
                                            <path fill-rule="evenodd" d="M8 7.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M7.5 10a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-2z"/>
                                        </svg></a>
                                    <!-- <a href="#" class="w-100 p-0btn btn-primary">Detail</a> -->
                                </div>
                        </div>
                    </div>
                </div>
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
        </ul>
    </div>
</div>
