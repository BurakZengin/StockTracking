<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Fatura | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
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
                                <div class="col-md-5 col-sm-6 col-xs-12">
                                    <div class="x_content">
                                        <div class="x_panel">
                                            <div class="x_title">
                                                <h2>Cari Bilgileri</h2>                                                  
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="x_content">
                                                <div class="x_content">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <label class="col-md-4 col-sm-3 col-xs-3">Fatura Tarihi :</label>
                                                                <label class="col-md-7 col-sm-3 col-xs-3">18/09/2018</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <label class="col-md-4 col-sm-3 col-xs-3">Unvan :</label>
                                                                <label class="col-md-7 col-sm-3 col-xs-3">${cariBilgileri.unvan}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Yetkili :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">${cariBilgileri.yetkili}</label>
                                                        </div>
                                                    </div>       
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Telefon :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">${cariBilgileri.telefon}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Vergi Dairesi :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">${cariBilgileri.vergiDairesi}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Vergi Dairesi No :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">${cariBilgileri.vergiDairesiNo}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Adres :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">${cariBilgileri.adres}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-6 col-xs-12">
                                <div class="x_content">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Fatura Ozeti</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <div class="x_content">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Iskonto :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">15 $</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Ara Toplam :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">1.930,00 $</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Kdv :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">50 $</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Genel Toplam :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3">1.951,00 $</label>
                                                        </div>
                                                    </div>       
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <div class="x_content">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Faturadaki Urun Bilgileri</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 5%">#</th>
                                                        <th style="width: 50%">Urun Adi</th>
                                                        <th style="width: 15%">Miktar</th>
                                                        <th style="width: 15%">Birim Fiyati</th>
                                                        <th style="width: 15%">Genel Toplam</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="d" items="${urunler}">
                                                        <tr>                                            
                                                            <td>#</td>
                                                            <td>${d.urunAdi}</td>
                                                            <td>${d.miktar}</td>
                                                            <td>${d.birimFiyati}</td>
                                                            <td>${d.genelToplam}</td>
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
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
    </body>
</html>