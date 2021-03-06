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
        <title>Stok Takip Sistemine Hosgeldiniz</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="static/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!--===============================================================================================-->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
        <link rel="stylesheet" type="text/css" href="static/css/util.css">
        <link rel="stylesheet" type="text/css" href="static/css/main.css">
        <!--===============================================================================================-->
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
    </head>
    <style>
        img {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>

    <script>
        function myFunction() {
            var err = "${err}";
            if (err == "ex") {
                new PNotify({
                    title: 'Giriş Sorunu !',
                    text: 'Kullanıcı Adı veya Şifre Hatalı !',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            }
            var kayit = "${kayit}";
            if (kayit == "2") {
                new PNotify({
                    title: 'Kayıt Ol',
                    text: 'Kullanıcı Başarıyla Kaydedildi',
                    type: 'success',
                    styling: 'bootstrap3'
                });
            }
            var mail = "${mail}";
            if (mail == "basarili") {
                new PNotify({
                    title: 'Şifremi Unuttum!',
                    text: 'Şifreniz Başarıyla Gönderildi',
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
                    <form class="login100-form validate-form" id="loginForm" action="Login" method="POST">
                        <span >
                            <i></i>
                        </span>
                        <img src="static/images/logo2.png"  style="width:380px;height:200x;" style="width:50%;">
                        <span class="login100-form-title p-b-34 p-t-27">
                           
                        </span>
                        <div class="wrap-input100 validate-input" data-validate = "Kullanici Adiniz Bos Olamaz">
                            <input class="input100" type="text" path="username" name="username" placeholder="Kullanıcı Adı"/>
                            <span class="focus-input100" data-placeholder="&#xf207;"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Sifreniz Bos Olamaz">
                            <input class="input100" type="password" path="password" name="password" placeholder="Parola"/>
                            <span class="focus-input100" data-placeholder="&#xf191;"></span>
                        </div>

                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Beni Hatırla
                            </label>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit">
                                Giriş Yap
                            </button>
                        </div>

                        <div class="text-center p-t-90">
                            <a class="txt1" href="/Forgot">
                                Şifrenizi Mi Unuttunuz?
                            </a>
                            <br>
                            <a class="txt1" href="/Kayit">
                                Kayit Ol
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--===============================================================================================-->
        <script src="static/vendors/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/bootstrap/js/popper.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendors/daterangepicker/moment.min.js"></script>
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
