<%-- 
    Document   : navBar
    Created on : Jul 6, 2020, 10:42:55 AM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controller.CategoryDB"%>
<%@page import="Model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="./preLoadNavBar.jsp"/>
<nav
    class="navbar navbar-expand-lg navbar-dark bg-dark top-bar fixed-top p-0"
    id="top-bar"
    >
    <a class="navbar-brand pl-5" href="Home">
        <img src="User/img/LOGO.png" alt="" id="logo">
    </a>
    <button
        class="navbar-toggler mr-5"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown"
        aria-expanded="false"
        aria-label="Toggle navigation"
        >
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="Home"
                   >Home <span class="sr-only">(current)</span></a
                >
            </li>
            <li class="nav-item">
                <a class="nav-link" href="category">Category</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="latest">Latest</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="mylist">MyList</a>
            </li>
        </ul>
        <ul class="navbar-nav pr-3" style="position: relative">
            <li class="nav-item pr-3">
                <form><input id="search"><div class="div1"></div></input></form>
            </li>
            <li class="nav-item pr-3">
                <a href="showCart">
                    <svg
                        width="1.5em"
                        height="1.5em"
                        viewBox="0 0 16 16"
                        class="bi bi-bag"
                        fill="currentColor"
                        xmlns="http://www.w3.org/2000/svg"
                        >
                        <path
                            fill-rule="evenodd"
                            d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z"
                            />
                        <path
                            d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z"
                            />
                    </svg>
                </a>
            </li>
            <li class="nav-item pr-3">
                <a href="#">
                    <svg
                        width="1.5em"
                        height="1.5em"
                        viewBox="0 0 16 16"
                        class="bi bi-bell"
                        fill="currentColor"
                        xmlns="http://www.w3.org/2000/svg"
                        >
                        <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z" />
                        <path
                            fill-rule="evenodd"
                            d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"
                            />
                    </svg>
                </a>
            </li>
            <li class="nav-item pr-5">
                <a href="#">
                    <svg
                        width="1em"
                        height="1em"
                        viewBox="0 0 16 16"
                        class="bi bi-caret-down-fill"
                        fill="currentColor"
                        xmlns="http://www.w3.org/2000/svg"
                        >
                        <path
                            d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"
                            />
                    </svg>
                </a>
            </li>
        </ul>
    </div>
</nav>
