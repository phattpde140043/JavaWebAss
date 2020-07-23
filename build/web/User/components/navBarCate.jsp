<%-- 
    Document   : navBarCate
    Created on : Jul 12, 2020, 7:36:18 PM
    Author     : Admin
--%>
<%@page import="Controller.UserDB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Controller.CategoryDB"%>
<%@page import="Model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="./preLoadNavBar.jsp"/>
<%
    List<Category> cl = CategoryDB.getAll();

%>
<script
    src="https://kit.fontawesome.com/e96465b91f.js"
    crossorigin="anonymous"
></script>
<div class="d-flex flex-column nav-with-sub" id="extra">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark top-bar p-0" id="top-bar">
        <a class="navbar-brand pl-5" href="Home">
            <img src="User/img/LOGO.png" alt="" id="logo">
        </a>
        <button class="navbar-toggler mr-5" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="Home">Home <span class="sr-only">(current)</span></a>
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
                <!-- <li class="nav-item dropdown">
        <a
          class="nav-link dropdown-toggle"
          href="#"
          id="navbarDropdownMenuLink"
          data-toggle="dropdown"
          aria-haspopup="true"
          aria-expanded="false"
        >
          Dropdown link
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
            </ul>
            <ul class="navbar-nav pr-3" style="position: relative">
                <li class="nav-item pr-3">
                    <form><input id="search"><div class="div1"></div></input></form>
                </li>
                <li class="nav-item pr-3 d-flex align-items-center">
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
                <li class="nav-item pr-1 d-flex align-items-center">
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

                <!-- Nav Item - User Information -->
                <li class="nav-item pr-3 dropdown d-flex align-items-center">
                    <a 
                        class="nav-link"
                        href="#"
                        id="userDropdown"
                        role="button"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                        >
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
                    <!-- Dropdown - User Information -->
                    <%                        String id = (String) session.getAttribute("ID");
                        String s = UserDB.getUserById(id).getuName();
                    %>
                    <div
                        class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                        aria-labelledby="userDropdown"
                        >
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                            <%=s%>
                        </a>
                        <a class="dropdown-item" href="myOrder">
                            <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                            Activity Log
                        </a>
                        <div class="dropdown-divider"></div>
                        <a
                            class="dropdown-item"
                            href="logout"
                            >
                            <i
                                class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"
                                ></i>
                            Logout
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>


    <!-- Switch category -->
    <% if (request.getParameter("value") == null) {
    %>
    <div id="sub-menu" class="p-0 d-flex justify-content-start align-items-center">
        <h1 class="p-0 m-0 mr-5 font-weight-bold">Category</h1>

        <div class="dropdown">
            <a class="btn btn-secondary dropdown-toggle font-weight-bold" href="#" role="button" id="dropdownMenuLink"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Choose one...
            </a>

            <div class="dropdown-menu w-100" aria-labelledby="dropdownMenuLink">
                <ul class="table-cate row p-0 m-0">
                    <% for (int j = 0; j < cl.size(); j++) {%>
                    <a class="col-lg-4 m-0 cate" href="/JavaWebAssignmentStruct2/category?value=<%=cl.get(j).getCatID()%>"><li class=""><%=cl.get(j).getCatName()%></li></a>
                            <% }%>
                </ul>
            </div>
        </div>
    </div>
    <% } else if (request.getParameter("value").length() > 0) {
    %>
    <div id="sub-menu" class="p-0 d-flex justify-content-start align-items-center">
        <h5 class="p-0 m-0 mr-2 "><a href="category">Category</a></h5>

        <span class="cateTitle"><%=CategoryDB.getById(request.getParameter("value")).getCatName()%></span>
    </div>
    <% }
    %>


</div>