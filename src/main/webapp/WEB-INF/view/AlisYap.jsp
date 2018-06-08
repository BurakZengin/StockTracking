<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Al&#305;&#351; Yap | </title>

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
                    <!-- page content -->
                    <div class="right_col" role="main">
                        <div class="col-md-12 col-sm-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Al&#305;&#351; Yapma</h2>                                                  
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="x_content">                                                        
                                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="/AlisYap=${idCari}" method="POST">
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Ürün Listesi</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select id="heard" class="form-control" name="urunListesi">
                                                    <c:forEach var="c" items="${urunList}">                                                               
                                                        <option value="${c.urunAdi}">${c.urunAdi}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">&#304;&#351;lem Tarihi
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <input type="text" name="islemTarihi" value="${tarih}" required="required" data-inputmask="'mask': '99/99/9999'" class="form-control col-md-7 col-xs-12">
                                            </div>
                                            <label class="control-label col-md-2 col-sm-3 col-xs-12" for="first-name">Al&#305;nan Miktar
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <input type="text" name="alinanMiktar" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>                                        
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Aç&#305;klama</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea type="text" name="aciklama" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">&#304;&#351;lem Tutar&#305;  (&#8378;)
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <input type="text" id="first-name" name="islemTutari" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" name="Button" value="Alis" class="btn btn-success">Al&#305;&#351; Yap</button>
                                                <button type="submit" name="Button" value="Alacakli" class="btn btn-warning">Alacakland&#305;r</button>
                                            </div>
                                        </div>

                                    </form>
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

        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
        <!-- Google Analytics -->
    </body>
</html>
