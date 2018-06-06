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

        <title>Fatura | </title>
        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
    </head>
    <script type="text/javascript">
        function myFunction() {
            var i = 1, genelToplam = 0, iskontoToplam = 0, toplamToplami = 0, araToplam = 0, kdvToplam = 0;
            var length = document.getElementById("datatable-buttons").rows.length;
            for (i; i < length; i++) {
                var miktar = parseFloat(document.getElementById("datatable-buttons").rows[i].cells[2].innerHTML); //onload="myFunction()
                var birim = parseFloat(document.getElementById("datatable-buttons").rows[i].cells[3].innerHTML);
                var kdv = parseFloat(document.getElementById("datatable-buttons").rows[i].cells[5].innerHTML);
                var kdvCarpan = 1 + kdv / 100;
                var iskonto = parseFloat(document.getElementById("datatable-buttons").rows[i].cells[6].innerHTML);
                var toplam = parseFloat((birim * miktar));
                toplamToplami += toplam;
                kdvToplam += Math.round(toplam * kdvCarpan - toplam);
                iskontoToplam += iskonto;

                araToplam += toplam - iskonto;
                document.getElementById("datatable-buttons").rows[i].cells[4].innerHTML = toplam;
                document.getElementById("datatable-buttons").rows[i].cells[5].innerHTML = "";
                document.getElementById("datatable-buttons").rows[i].cells[6].innerHTML = "";
                genelToplam += (toplam * kdvCarpan) - iskonto;
            }
            document.getElementById("kdv").innerHTML = kdvToplam;
            document.getElementById("iskontoToplam").innerHTML = iskontoToplam;
            document.getElementById("araToplam").innerHTML = araToplam;
            document.getElementById("genelToplam").innerHTML = genelToplam;
        }
        $(document).ready(function () {
            myFunction();
        });
    </script>

    <body class="nav-md" >
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
                                                                <label class="col-md-4 col-sm-3 col-xs-3">Ünvan :</label>
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
                                            <h2>Fatura Özeti</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <div class="x_content">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3" >İskonto (₺) :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3" id="iskontoToplam"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Ara Toplam :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3" id="araToplam"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Kdv (%) :</label>
                                                            <label class="col-md-7 col-sm-3 col-xs-3" id="kdv"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label class="col-md-4 col-sm-3 col-xs-3">Genel Toplam :</label>
                                                            <label id="genelToplam" class="col-md-7 col-sm-3 col-xs-3"></label>
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
                                            <h2>Faturadaki Ürün Bilgileri</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <table id="datatable-buttons" class="table table-striped" >
                                                <thead>
                                                    <tr>
                                                        <th style="width: 5%">#</th>
                                                        <th style="width: 50%">Ürün Adı</th>
                                                        <th style="width: 15%">Miktar</th>
                                                        <th style="width: 15%">Birim Fiyatı</th>
                                                        <th style="width: 15%">Toplam</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="d" items="${urunler}">
                                                        <tr>                                            
                                                            <td>#</td>
                                                            <td >${d.urunAdi}</td>
                                                            <td >${d.miktar}</td>
                                                            <td >${d.birimFiyati}</td>
                                                            <td >${d.genelToplam}</td>
                                                            <td style="display: none;">${d.kdv}</td>
                                                            <td style="display: none;">${d.iskonto}</td>
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