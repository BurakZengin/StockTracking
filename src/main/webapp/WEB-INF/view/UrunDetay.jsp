
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Gentelella Alela! | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Dropzone.js -->
        <link href="static/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <jsp:include page="header.jsp"></jsp:include>
                <div class="right_col" role="main">
                    <div class="">
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Stok Kategorileri</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <div class="x_panel">
                                                <div class="x_title">
                                                    <h2>Urun Bilgileri</h2>                                                  
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="x_content">
                                                    <br />
                                                    <!-- form input mask -->
                                                    <div class="col-md-12">
                                                        <form class="form-horizontal form-label-left">
                                                            <div class="form-group">
                                                                <label class="col-md-3 col-sm-3 col-xs-3">Kategori :</label>
                                                                <label class="col-md-5 col-sm-3 col-xs-3">Turk Kahvesi</label>
                                                                <a href="/StokTakip/UrunDetay" class="btn btn-success btn-md col-md-3"><i class="glyphicon glyphicon-plus"></i> Stok Ekle</a>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 col-sm-3 col-xs-3">Urun Adi :</label>
                                                                <label class="col-md-5 col-sm-3 col-xs-3">Erzincan Kahvesi</label>
                                                                <a href="/StokTakip/UrunDetay" class="btn btn-danger btn-md col-md-3"><i class="glyphicon glyphicon-minus"></i> Stok Cikar</a>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 col-sm-3 col-xs-3">Alis Fiyati :</label>
                                                                <label class="col-md-4 col-sm-3 col-xs-3">$500</label>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 col-sm-3 col-xs-3">Satis Fiyati :</label>
                                                                <label class="col-md-4 col-sm-3 col-xs-3">$600</label>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 col-sm-3 col-xs-3">Birim Fiyati :</label>
                                                                <label class="col-md-4 col-sm-3 col-xs-3">$100 / Kg</label>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-md-3 col-sm-3 col-xs-3">Stok Adedi :</label>
                                                                <label class="col-md-4 col-sm-3 col-xs-3">200</label>
                                                            </div>                                                            
                                                            <div class="ln_solid"></div>
                                                        </form>
                                                    </div>
                                                    <!-- /form input mask -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer content -->

                <!-- /footer content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="static/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="static/vendors/nprogress/nprogress.js"></script>
        <!-- Dropzone.js -->
        <script src="static/vendors/dropzone/dist/min/dropzone.min.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
    </body>
</html>