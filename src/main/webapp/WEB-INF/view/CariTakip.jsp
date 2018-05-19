
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
                    <div class="col-md-12 col-sm-6 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Cari Takip</h2>                                                  
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="x_content">                                                        
                                    <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>                                                                    
                                                <th style="width:5%">Islem</th>
                                                <th>Cari Adi</th>
                                                <th style="width:15%">Cep</th>
                                                <th style="width:15%">Bakiye</th>  
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>                                                                    
                                                <td><a href="/StokTakip/CariHesapDetayi" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-cog"></i></a></td>
                                                <td>Burak Zengin</td>
                                                <td>507 475 77 70</td>
                                                <td>5.000 $</td>                                                                    
                                            </tr>
                                            <tr>                                                                    
                                                <td><a href="/StokTakip/CariHesapDetayi" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-cog"></i></a></td>
                                                <td>Omer Faruk Oner</td>
                                                <td>507 475 77 70</td>
                                                <td>11.000 $</td>                                                                    
                                            </tr>
                                            <tr>                                                                    
                                                <td><a href="/StokTakip/CariHesapDetayi" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-cog"></i></a></td>
                                                <td>Omer Faruk Oner</td>
                                                <td>507 475 77 70</td>
                                                <td>16.000 $</td>                                                                      
                                            </tr>
                                            <tr>                                                                    
                                                <td><a href="/StokTakip/CariHesapDetayi" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-cog"></i></a></td>
                                                <td>Burak Zengin</td>
                                                <td>507 475 77 70</td>
                                                <td>15.000 $</td>                                                            
                                            </tr>
                                            <tr>                                                                    
                                                <td><a href="/StokTakip/CariHesapDetayi" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-cog"></i></a></td>
                                                <td>Burak Zengin</td>
                                                <td>507 475 77 70</td>
                                                <td>2.000 $</td>                                                          
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

        <!-- bootstrap-datetimepicker -->    
        <script src="../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
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
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
        <!-- Google Analytics -->
    </body>
</html>
