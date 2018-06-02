<%-- 
    Document   : Login
    Created on : Feb 28, 2018, 3:10:44 PM
    Author     : Elidor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Welcome to X R&D</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="static/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendors/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendors/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="static/vendors/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendors/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendors/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="static/vendors/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="static/css/util.css">
        <link rel="stylesheet" type="text/css" href="static/css/main.css">
        <!--===============================================================================================-->
    </head>

    <script>
        function myFunction() {
            var err = ${err};
            if (err == "1") {
                new PNotify({
                    title: 'Kayit Sorunu!',
                    text: 'Kullanici Adi Kullaniliyor!',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            } else if (err == "2") {
                new PNotify({
                    title: 'Kayit Sorunu!',
                    text: 'Admin Parolasi Yanlis!',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            } else if (err == "3") {
                new PNotify({
                    title: 'Kayit Sorunu!',
                    text: 'Parolalar Uyusmuyor!',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            }
        }
    </script>

    <body onload="myFunction()">
        <div class="limiter">
            <div class="container-login100" style="background-image: url('static/images/bg-01.jpg');">
                <div class="wrap-login100">

                    <form class="login100-form validate-form" id="loginForm" action="Forgot" method="POST">
                        <span class="login100-form-logo">
                            <i class="zmdi zmdi-landscape"></i>
                        </span>

                        <span class="login100-form-title p-b-34 p-t-27">
                            Kayit Ol ${err}
                        </span>

                        <div class="wrap-input100 validate-input" data-validate = "Kullanici Adinizi Giriniz">
                            <input class="input100" type="text" name="username" placeholder="Kullanici Adi"/>
                            <span class="focus-input100" data-placeholder="&#xf207;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Isim Giriniz">
                            <input class="input100" type="text" name="name" placeholder="Isim"/>
                            <span class="focus-input100" data-placeholder="&#xf207;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Soyad Giriniz">
                            <input class="input100" type="text" name="surname" placeholder="Soyad"/>
                            <span class="focus-input100" data-placeholder="&#xf207;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Parola Giriniz">
                            <input class="input100" type="password" name="password" placeholder="Parola"/>
                            <span class="focus-input100" data-placeholder="&#xf191;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Parola Giriniz">
                            <input class="input100" type="password" name="rePassword" placeholder="Parola Tekrar"/>
                            <span class="focus-input100" data-placeholder="&#xf191;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Admin Parolasini Giriniz">
                            <input class="input100" type="password" name="adminPassword" placeholder="Admin Parolasi"/>
                            <span class="focus-input100" data-placeholder="&#xf191;"></span>
                        </div>
                        <div class="wrap-input100">
                            <input class="input100" type="text"  placeholder="Rol"/>
                            <span class="focus-input100" data-placeholder="&#x2709;"></span>
                            <select id="heard" class="form-control" name="role">
                                <option value="Kullanici">Kullanici</option>
                                <option value="Admin">Admin</option>
                            </select>
                        </div>
                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit">
                                Kayit Ol
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- iCheck -->
        <script src="static/vendors/iCheck/icheck.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/bootstrap/js/popper.js"></script>
        <script src="static/vendors/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/daterangepicker/moment.min.js"></script>
        <script src="static/vendors/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <!-- PNotify -->
        <script src="static/vendors/pnotify/dist/pnotify.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.buttons.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.nonblock.js"></script>

        <script src="static/js/main.js"></script>

    </body>
</html>
