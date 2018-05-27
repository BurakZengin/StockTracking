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

        <title>Urun Detay | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Dropzone.js -->
        <link href="static/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
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
                    <div class="right_col" role="main">
                        <div class="">
                            <div class="clearfix"></div>
                            <div class="row">
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
                                                            <label class="col-md-5 col-sm-3 col-xs-3">${urunBilgileri.kategori}</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Urun Adi :</label>
                                                        <label class="col-md-5 col-sm-3 col-xs-3">${urunBilgileri.urunAdi}</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Alis Fiyati :</label>
                                                        <label class="col-md-4 col-sm-3 col-xs-3">${urunBilgileri.alisFiyati} / ${urunBilgileri.birim}</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Satis Fiyati :</label>
                                                        <label class="col-md-4 col-sm-3 col-xs-3">${urunBilgileri.satisFiyati} / ${urunBilgileri.birim}</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-3 col-sm-3 col-xs-3">Stok Adedi :</label>
                                                        <label class="col-md-4 col-sm-3 col-xs-3">${urunBilgileri.stokAdedi}</label>
                                                    </div>                                                            
                                                    <div class="ln_solid"></div>
                                                </form>
                                            </div>
                                            <!-- /form input mask -->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Stok Giris / Cikis</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <br />
                                            <!-- form input mask -->
                                            <div class="col-md-12">
                                                <form class="form-horizontal form-label-left" action='/UrunDetay=${idUrun}' method="POST">                                                          
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Tarih :
                                                        </label>
                                                        <input type="hidden" name="urunAdi" value="${urunAdi}">
                                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                                            <div class="controls">
                                                                <div class="input-prepend input-group">
                                                                    <input type="text" name="tarih" value="${tarih}" required="required" data-inputmask="'mask': '99/99/9999'" class="form-control col-md-7 col-xs-12">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Miktar :
                                                        </label>
                                                        <div class="col-md-2 col-sm-6 col-xs-12">
                                                            <div class="controls">
                                                                <div class="input-prepend input-group">
                                                                    <input type="text" name="miktar" class="form-control col-md-7 col-xs-12" required="required"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Aciklama :
                                                        </label>
                                                        <div class="col-md-8 col-sm-6 col-xs-12">
                                                            <div class="controls">
                                                                <textarea type="text" id="" name="aciklama" rows="3" style="resize: vertical;" required="required" class="form-control col-md-7 col-xs-12" ></textarea>
                                                            </div>
                                                        </div>
                                                    </div>                                                                                                                                                                   
                                                    <div class="ln_solid"></div>                                                                  
                                                    <div class="col-md-8">
                                                        <button type="submit" name="Button" value="Giris" class="btn btn-success btn-md col-md-5"/><i class="glyphicon glyphicon-plus"></i> Stok Ekle</a>
                                                        <button type="submit" name="Button" value="Cikis" class="btn btn-danger btn-md col-md-5"/><i class="glyphicon glyphicon-minus"></i> Stok Cikar</a>
                                                    </div>  
                                                </form>
                                            </div>
                                            <!-- /form input mask -->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Stok Hareketleri</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <div class="x_content">                                                        
                                                <table id="datatable-buttons" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>                                                                    
                                                            <th style="width: 10%">Tarih</th>
                                                            <th style="width: 10%">Islem Turu</th>
                                                            <th style="width: 10%">Miktar</th>
                                                            <th>Aciklama</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="c" items="${urunTablo}">
                                                            <tr>                                                                
                                                                <td>${c.tarih}</td>
                                                                <td>${c.islemTuru}</td>
                                                                <td>${c.miktar}</td>
                                                                <td>${c.aciklama}</td>
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
    </body>
</html>