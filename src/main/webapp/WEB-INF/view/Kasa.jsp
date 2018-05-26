
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kasa | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Dropzone.js -->
        <link href="static/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <jsp:include page="header.jsp"></jsp:include>
                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Bakiye</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="form-group">
                                        <label class="col-md-3 col-sm-3 col-xs-3">Kasa Bakiyesi :</label>
                                        <label class="col-md-5 col-sm-3 col-xs-3">50.000 $</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Islemler</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <a href="/KasaGiris" class="btn btn-success">Giris Yap (+)</a>
                                    <a href="/KasaCikis" class="btn btn-danger">Cikis Yap (-)</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Kasa Hareketleri</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="width: 10%">Tarih</th>
                                                <th style="width: 10%">Tip</th>
                                                <th style="width: 10%">Tutar</th>
                                                <th style="width: 50%">Aciklama</th>
                                                <th style="width: 20%">Unvan</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>22/09/2018</td>
                                                <td>Cikis</td>
                                                <td>12.000 $</td>
                                                <td>Mal Alimi</td>
                                                <td>Baskan Mehmet</td>
                                            </tr>
                                            <tr>
                                                <td>19/09/2018</td>
                                                <td>Giris</td>
                                                <td>2.000 $</td>
                                                <td>Mal Satimi</td>
                                                <td>Baskan Berk</td>
                                            </tr>
                                            <tr>
                                                <td>10/09/2018</td>
                                                <td>Giris</td>
                                                <td>1.000 $</td>
                                                <td>Kahve Sattim</td>
                                                <td>Baskan Mehmet</td>
                                            </tr>
                                            <tr>
                                                <td>09/09/2018</td>
                                                <td>Cikis</td>
                                                <td>5.000 $</td>
                                                <td>Kahve Alimi</td>
                                                <td>Baskan Ali</td>
                                            </tr>
                                            <tr>
                                                <td>19/09/2018</td>
                                                <td>Cikis</td>
                                                <td>6.000 $</td>
                                                <td>Mal Alimi</td>
                                                <td>Baskan Faruk</td>
                                            </tr>
                                        </tbody>
                                    </table>
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

        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="static/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="static/vendors/nprogress/nprogress.js"></script>
        <!-- jQuery Smart Wizard -->
        <script src="static/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="static/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="static/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="static/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
        <script src="static/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <script src="static/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="static/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
        <script src="static/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
        <script src="static/vendors/jszip/dist/jszip.min.js"></script>
        <script src="static/vendors/pdfmake/build/pdfmake.min.js"></script>
        <script src="static/vendors/pdfmake/build/vfs_fonts.js"></script>
        <script src="static/js/custom.min.js"></script>
        <!-- Google Analytics -->
    </body>
</html>
