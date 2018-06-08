<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kasa Giris | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="static/js/ion.rangeSlider.js"></script>
    </head>
    <script>
        function myFunction() {

            var txt = document.getElementById('aciklama');
            var txt1 = document.getElementById('tutar');

            if (txt.value != "" && txt1.value != "")
            {
                new PNotify({
                    title: 'Kasaya giris yapiliyor!',
                    text: 'Lütfen,kasayi kontrol edin.',
                    type: 'success',
                    styling: 'bootstrap3'
                });
            }

        }
    </script>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <jsp:include page="header.jsp"></jsp:include>
                    <!-- page content -->
                    <div class="right_col" role="main">
                        <div class="col-md-12 col-sm-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Kasaya Giriş Yap</h2>                                                  
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="x_content">                                                        
                                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="/KasaGiris" method="POST">

                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">İşlem Tarihi
                                                </label>
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input type="text" name="tarih" value="${tarih}" required="required" data-inputmask="'mask': '99/99/9999'" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>                                        
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Açıklama</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea type="text" id="aciklama" name="aciklama" required="required" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tutar
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <input type="number" id="tutar" name="tutar" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" class="btn btn-success" onclick="myFunction()">Giriş Yap</button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                </footer>
                <!-- /footer content -->
            </div>
        </div>

        <script src="static/porto/jquery.js"></script>
        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="static/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="static/vendors/nprogress/nprogress.js"></script>
        <!-- PNotify -->
        <script src="static/vendors/pnotify/dist/pnotify.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.buttons.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.nonblock.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>

        <!-- Google Analytics -->
    </body>
</html>
