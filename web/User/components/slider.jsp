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
    %>
    <h2 class="pb-3">My List</h2>
    <div class="container p-0">
        <!-- slider real -->
        <div id="carouselExampleIndicators<%=random_double%>" class="carousel slide p-5" data-ride="carousel" data-pause="hover" data-interval="5000">
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
                                <a href="#" class="">Buy</a>
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>
                    </div>                      
                </div>
                <div class="carousel-item">
                    <div class="row d-flex justify-content-center">
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row d-flex justify-content-center">
                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
                            </div>
                        </div>

                        <div class="m-2 col-xs-6 col-md-6 col-lg-2 p-0 m-0 d-flex justify-content-center flex-column box">
                            <img src="User/img/1.jpg" alt="" class="w-100">
                            <p class="title p-0 m-0"><a href="">card title</a></p>
                            <div class="overlay"></div>
                            <div class="button w-100 p-0 m-0">
                                <a href="#" class="">Buy</a>
                                <!-- <a href="#" class="btn btn-primary">Detail</a> -->
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
