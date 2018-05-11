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
        <link rel="stylesheet" type="text/css" href="static/css/util.css">
        <link rel="stylesheet" type="text/css" href="static/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url('static/images/bg-01.jpg');">
                <div class="wrap-login100">

                    <f:form class="login100-form validate-form" id="loginForm" action="/Management/Login" modelAttribute="command" method="post">
                        <span class="login100-form-logo">
                            <i class="zmdi zmdi-landscape"></i>
                        </span>

                        <span class="login100-form-title p-b-34 p-t-27">
                            Şifreni Bul
                        </span>

                        <div class="wrap-input100 validate-input" data-validate = "Enter Your E-mail">
                            <input class="input100" type="text" path="email" name="username" placeholder="E-Mailini Gir"/>
                            <span class="focus-input100" data-placeholder="&#x2709;"></span>
                        </div>

                        <div class="contact100-form-checkbox">   
                            <c:if test="${err!=null}">
                                <div class="validate-input" data-validate="Login Failed! Enter valid credentials.">
                                    <p style="color: #990000; margin-top: 10px;">${err}</p>
                                </div>
                            </c:if>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit">
                                Mail Gönder
                            </button>
                        </div>
                    </f:form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

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
        <script src="static/js/main.js"></script>

    </body>
</html>
