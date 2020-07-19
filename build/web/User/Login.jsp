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
        <link rel="stylesheet" href="User/css/login.css" />

        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>

        <div class="wrapper">
            <div class="header">
                <nav class="navbar navbar-light bg-transparent">
                    <a class="navbar-brand ml-3" href="#">
                        <img src="User/img/LOGO.png" alt="logo" loading="lazy" id="logo">
                    </a>
                </nav>
            </div>

            <div class="container d-flex justify-content-center">
                <div class="form-login">
                    <h1 class="font-weight-bold">Sign In</h1>

                    <!--Form login here !!!-->

                    <form class="needs-validation" novalidate action="">
                        <div class="form-group">
                            <label class="label-inside" for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                            <div class="valid-feedback">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="label-inside" for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" required>
                            <div class="valid-feedback">
                            </div>
                        </div>

                        <button type="submit" class="mt-2 btn w-100 mb-2 mt-4">Sign In</button>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="form-group form-check p-0">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <a href="#">Need help?</a>
                        </div>
                    </form>
                    
                    <div class="sign-in">
                        New to Nerd? 
                        <a href="#">Sign up now</a>
                    </div>
                    
                    <div class="d-flex justify-content-center sub-img">
                        <img src="User/img/gift.svg"  alt="logo" loading="lazy" id="logo">
                    </div>
                </div>
            </div>
            
            <div class="divider"></div>
            
            <footer>
                <div class="container p-5">
                <p class="mb-5" style="font-size: 1rem;">
                    <a class="footer-top-a" href="#">Questions? Contact us.</a>
                </p>
                <ul class="d-flex col-lg-8 justify-content-between p-0">
                    <li><a href="#">Gift Card Terms</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Statement</a></li>

                </ul>
                </div>
            </footer>

        </div>

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

        <script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict';
                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>
    </body>
</html>
