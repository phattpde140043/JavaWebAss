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
        <link rel="stylesheet" href="User/css/bookDetail.css" />
        <link rel="stylesheet" href="User/css/slider.css" />

        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- Nav bar -->
        <jsp:include page="./components/navBar.jsp"/>


        <div class="latest">
        </div>

        <%
            Book b = BookDB.getById(request.getParameter("id"));
        %>

        <div class="container book-detail p-0 d-flex">
            <div class="product-gallery col-xs-11 col-md-11 col-md-5 col-lg-5 p-0 d-flex justify-content-center">

                <!--src book here!!!-->

                <img src="<%=b.getbCover()%>">
            </div>

            <!--book detail here !!!-->

            <div class="summary col-xs-12 col-md-12 col-md-6 col-lg-6 p-0">

                <!--title-->
                <h1><%=b.getbName()%></h1>

                <div class="rating">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>

                    <span>(2 customer reviews)</span>
                </div>

                <!--description-->
                <p class="des"><%=b.getbDes()%></p>

                <div class="offer-box">

                    <!--price-->
                    <p>
                        <span class="price">
                            $<%=b.getbPrice()%>
                        </span>
                    </p>

                    <!--add to cart-->
                    <form class="d-flex justify-content-start align-items-center" action="cart">
                        <input name="bid" type="text" value="<%=b.getbId()%>" readonly>
                        <button type="submit" class="btn ml-3 btn-primary">Add to cart</button>
                    </form>
                </div>

                <div class="product-meta">

                    <!--category-->
                    <span>Category: <%=CategoryDB.getById(b.getCatId()).getCatName()%></span>
                </div>
            </div>

        </div>

        <div class="latest">
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
