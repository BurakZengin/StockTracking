<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-6 col-xs-12">
                                        <div class="x_panel">
                                            <div class="x_title">
                                                <h2>Urun Ekleme</h2>                                                  
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
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Urun Adi</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="last-name" name="urunAdi" required="required" class="form-control col-md-7 col-xs-12">
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
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Alis Fiyati</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="alisFiyati">
                                                    </div>
                                                    <label for="middle-name" class="control-label col-md-2 col-sm-3 col-xs-12">Satis Fiyati</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="satisFiyati">
                                                    </div>
                                                </div>
                                                <div class="form-group form-group has-feedback">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Kdv Orani</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12 form-group has-feedback">
                                                        <input type="text" class="form-control has-feedback-left" name='kdvOrani'>
                                                        <span class="fa fa-percent form-control-feedback left" aria-hidden="true"></span>
                                                    </div>                                                    
                                                    <label for="middle-name" class="control-label col-md-2 col-sm-3 col-xs-12">Stok Sayisi</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="stokSayisi">
                                                    </div>
                                                   
                                                </div>
                                                <div class="ln_solid"></div>
                                                <div class="form-group">
                                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                        <button type="submit" class="btn btn-success">Ekle</button>
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

        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
    </body>
</html>