<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tr">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Ürün Ekleme | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Dropzone.js -->
        <link href="static/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
        <script>
            function myFunction4() {
                new PNotify({
                    title: 'Urun siliniyor!',
                    text: 'Lütfen,urunler listesini kontrol edin.',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            }

            function myFunction2() {
                var search = document.getElementById("urun").value;
                if (document.getElementById(search)) {
                    new PNotify({
                        title: 'Bu urun mevcut!',
                        text: 'Lütfen,baska bir urun ismi deneyin.',
                        type: 'error',
                        styling: 'bootstrap3'
                    });
                } else {
                    var txt = document.getElementById('urun');
                    var txt1 = document.getElementById('2');
                    var txt2 = document.getElementById('3');
                    var txt3 = document.getElementById('4');
                    var txt4 = document.getElementById('5');
                    if (txt.value != "" && txt1.value != "" && txt2.value != "" && txt3.value != "" && txt4.value != "") {
                        $("#ekle").attr('type', 'submit');
                        new PNotify({
                            title: 'Urun ekleniyor!',
                            text: 'Lütfen,urunleri kontrol edin.',
                            type: 'success',
                            styling: 'bootstrap3'
                        });
                    }
                }
            }
            function myFunction3() {
                if ($("#ekle").hasOwnProperty('type')) {
                    $("#demo-form2").attr('type', 'button');
                    $("#demo-form2").removeAttr('action');
                }
            }
        </script>
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
                                                <h2>Ürün Ekleme</h2>                                                  
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="x_content">
                                                <br />
                                                <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action='/UrunEkleSubmit' method="POST">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Kategori</label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <select id="heard" class="form-control" name="kategori">
                                                            <c:forEach var="c" items="${urunKategori}">                                                               
                                                                <option value="${c.kategori}">${c.kategori}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Ürün Adı</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="urun" name="urunAdi" required="required" class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Birim</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <select id="heard" class="form-control" name="birim">
                                                            <option value="Kilogram">Kilogram</option>
                                                            <option value="Gram">Gram</option>
                                                            <option value="Litre">Litre</option>
                                                            <option value="Mililitre">Mililitre</option>
                                                            <option value="Metre">Metre</option>
                                                            <option value="Santimetre">Santimetre</option>
                                                            <option value="Milimetre">Milimetre</option> 
                                                            <option value="Adet">Adet</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Alış Fiyatı</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="number" id="2" name="alisFiyati" required="required">
                                                    </div>
                                                    <label for="middle-name" class="control-label col-md-2 col-sm-3 col-xs-12">Satış Fiyatı</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="number" id="3" name="satisFiyati" required="required">
                                                    </div>
                                                </div>
                                                <div class="form-group form-group has-feedback">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12" >Kdv Oranı</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12 form-group has-feedback">
                                                        <input type="number" class="form-control has-feedback-left" name='kdvOrani' id="4" value="8" required="required">
                                                        <span class="fa fa-percent form-control-feedback left" aria-hidden="true"></span>
                                                    </div>                                                    
                                                    <label for="middle-name" class="control-label col-md-2 col-sm-3 col-xs-12">Stok Sayısı</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" id="5" type="number" name="stokSayisi" required="required">
                                                    </div>
                                                </div>
                                                <div class="ln_solid"></div>
                                                <div class="form-group">
                                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="display: flex;
                                                         align-items: center;
                                                         justify-content: center;">
                                                        <button type="submit" id="ekle" onclick="myFunction2(), myFunction3()" class="btn btn-success">Ekle</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="x_content">
                                <div class="col-md-12 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Ürün Silme</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <br />
                                            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action='/UrunSilSubmit' method="POST">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Ürün Adı</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <select id="heard" class="form-control" name="urunAdi">
                                                            <c:forEach var="c" items="${urunList}">                                                               
                                                                <option id="${c.urunAdi}" class="urunlerim" value="${c.urunAdi}">${c.urunAdi}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="ln_solid"></div>
                                                <div class="form-group">
                                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="display: flex;
                                                         align-items: center;
                                                         justify-content: center;">
                                                        <button type="submit" onclick="myFunction4()" class="btn btn-danger">Sil</button>
                                                    </div>
                                                </div>
                                            </form>
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
        <!-- Dropzone.js -->
        <script src="static/vendors/dropzone/dist/min/dropzone.min.js"></script>
        <!-- PNotify -->
        <script src="static/vendors/pnotify/dist/pnotify.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.buttons.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.nonblock.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
    </body>
</html>