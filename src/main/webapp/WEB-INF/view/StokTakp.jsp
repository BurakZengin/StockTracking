<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="static/images/icons/favicon.ico" type="image/ico" />

        <title>Stok Takip | </title>

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
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="static/js/ion.rangeSlider.js"></script>
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
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-6 col-xs-12">
                                        <div class="x_panel">
                                            <div class="x_title">
                                                <h2>Stok Takip</h2>                                                  
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="x_content">
                                                <div class="x_content">                                                        
                                                    <table id="datatable-buttons" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th style="width: 5%">Detay</th>
                                                                <th style="width: 25%">Kategori</th>
                                                                <th style="width: 25%">Ürün Adı</th>
                                                                <th style="width: 15%">Stok Sayısı</th>
                                                                <th style="width: 15%">Toplam Stok Fiyatı</th>
                                                                <th style="width: 15%">Satış Birim Fiyatı</th>
                                                            </tr>
                                                        </thead>

                                                        <tbody>
                                                        <c:forEach var="c" items="${urunKategori}">
                                                            <tr>
                                                                <td><a href="/UrunDetay=${c.idUrun}" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-search"></i></a></td>
                                                                <td>${c.kategori}</td>
                                                                <td>${c.urunAdi}</td>
                                                                <td>${c.stokAdedi}</td>
                                                                <td>${c.stokAdedi}</td>
                                                                <td>${c.satisFiyati}</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer content -->
                <footer>
                </footer>
                <!-- /footer content -->
            </div>
        </div>

        <script src="static/porto/jquery.js"></script>   
        <script src="static/porto/plugins.js"></script>

        <!-- Theme Initializer -->
        <script src="static/porto/theme.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="static/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="static/vendors/nprogress/nprogress.js"></script>
        <!-- Dropzone.js -->
        <script src="static/vendors/dropzone/dist/min/dropzone.min.js"></script>

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
    </body>
</html>