<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Cari Hesap Detayi | </title>

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
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Cari Hesap Detayi</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Firma Bilgileri</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Iletisim Bilgileri</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Banka Bilgileri</a>
                                        </li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-4 col-sm-3 col-xs-3">Unvan :</label>
                                                        <label class="col-md-8 col-sm-3 col-xs-3">${cariBilgileri.unvan}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-4 col-sm-3 col-xs-3">Yetkili :</label>
                                                        <label class="col-md-8 col-sm-3 col-xs-3">${cariBilgileri.yetkili}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-4 col-sm-3 col-xs-3">Vergi Dairesi :</label>
                                                        <label class="col-md-8 col-sm-3 col-xs-3">${cariBilgileri.vergiDairesi}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-4 col-sm-3 col-xs-3">Vergi Dairesi No :</label>
                                                        <label class="col-md-8 col-sm-3 col-xs-3">${cariBilgileri.vergiDairesiNo}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-4 col-sm-3 col-xs-3">Ticaret Sicil No :</label>
                                                        <label class="col-md-8 col-sm-3 col-xs-3">${cariBilgileri.ticaretSicilNo}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Adres :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.adres}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Telefon :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.telefon}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Fax :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.fax}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Mail :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.mail}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Banka Adi :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.bankaAdi}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Sube :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.sube}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Sube No :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.subeNo}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Hesap No :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.hesapNo}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">                                                   
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">IBAN :</label>
                                                        <label class="col-md-9 col-sm-3 col-xs-3">${cariBilgileri.iban}</label>
                                                    </div>   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
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
                                <div class="col-md-12 col-sm-6 col-xs-12" >
                                    <a href="/CariAlacaklandir" class="btn btn-info">Satis Yap</a>
                                    <a href="/CariBorclandir" class="btn btn-warning">Mal Al</a>
                                    <a href="/CariTahsilat" class="btn btn-primary">Tahsilat</a>
                                    <a href="/CariOdeme" class="btn btn-dark">Odeme</a>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Hesap Duzenleme</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="col-md-12 col-sm-6 col-xs-12" >
                                    <a href="/CariDuzenle=${cariBilgileri.idCari}" class="btn btn-danger">Cari Hesap Duzenle</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_content">
                                <div class="col-md-12 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Cari Hareket Dokumu</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <div class="x_content">                                                        
                                                <table id="datatable-buttons" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 10%;">Detay</th>
                                                            <th style="width: 10%;">Tarih</th>
                                                            <th>Aciklama</th>
                                                            <th style="width: 10%;">Borc</th>
                                                            <th style="width: 10%;">Alacak</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <a href="/UrunDetay" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
                                                                <a href="/UrunDetay" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
                                                            </td>
                                                            <td>19/09/2018</td>
                                                            <td>Almanci Kahvesi</td>
                                                            <td>150$</td>
                                                            <td>$1100</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="/UrunDetay" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
                                                                <a href="/UrunDetay" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
                                                            </td>
                                                            <td>19/09/2018</td>
                                                            <td>Erzincan Kahvesi</td>
                                                            <td>15$</td>
                                                            <td>$500</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="/UrunDetay" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
                                                                <a href="/UrunDetay" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
                                                            </td>
                                                            <td>19/09/2018</td>
                                                            <td>Patates Puresi</td>
                                                            <td>61$</td>
                                                            <td>$700</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="/UrunDetay" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
                                                                <a href="/UrunDetay" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
                                                            </td>
                                                            <td>19/09/2018</td>
                                                            <td>Muz Sosu</td>
                                                            <td>30$</td>
                                                            <td>$200</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="/UrunDetay" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
                                                                <a href="/UrunDetay" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
                                                            </td>
                                                            <td>19/09/2018</td>
                                                            <td>Ananas Surubu</td>
                                                            <td>20$</td>
                                                            <td>$50</td>
                                                        </tr>
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
