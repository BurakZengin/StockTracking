<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Tahsilat Yap | </title>

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
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Cariden Tahsilat</h2>                                                  
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <div class="x_content">                                                        
                                            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Islem Tarihi
                                                    </label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input type="text" name="islemTarihi" value="${tarih}" required="required" data-inputmask="'mask': '99/99/9999'" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>                                                
                                            <div class="form-group">
                                                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Aciklama</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <textarea type="text" id="" name="aciklama" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Borc Miktari
                                                </label>
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input disabled type="text" id="first-name" name="borcMiktari" value="0" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <button type="submit" class="btn btn-success">Tahsilat Yap</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_content">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Cari Borc Dokumu</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <div class="x_content">                                                        
                                                <table id="datatable-buttons" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 10%;">Tarih</th>
                                                            <th>Aciklama</th>
                                                            <th style="width: 10%">Islem Turu</th>
                                                            <th style="width: 15%">Islem Tutari</th>
                                                            <th style="width: 5%">Ekle</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="c" items="${cariHareketleri}">
                                                            <tr>                                                                
                                                                <td>${c.islemTarihi}</td>
                                                                <td>${c.aciklama}</td>
                                                                <td>${c.islemTuru}</td>
                                                                <td>${c.islemTutari}</td>
                                                                <td><a class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i></a></td>
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
