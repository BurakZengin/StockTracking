<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kategoriler | </title>

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
        <script>
            function myFunction() {
                if (document.getElementById("inputSuccess2").value) {
                    new PNotify({
                        title: 'Katagori ekleniyor!',
                        text: 'Kategorileri kontrol edin.',
                        type: 'success',
                        styling: 'bootstrap3'
                    });
                }
            }
            function myFunction2() {
                var a = confirm('Kategorideki b�t�n �r�nler silinicek,emin misin?', 'Son');
                if (a === true) {
                    $("#sil").attr('type', 'submit');
                    new PNotify({
                        title: 'Kategori siliniyor!',
                        text: 'Kategorileri kontrol edin.',
                        type: 'error',
                        styling: 'bootstrap3'
                    });
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
                                    <div class="col-md-5 col-sm-6 col-xs-12">
                                        <div class="x_panel">
                                            <div class="x_title">
                                                <h2>Kategoriler</h2>                                                  
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="x_content">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Kategori Ad&#305;</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach var="c" items="${kategorilerList}">
                                                        <tr>
                                                            <th scope="row">#</th>
                                                            <td>${c.kategori}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-7 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Kategori Ekleme</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <form action='/KategoriEkle' method="POST">
                                                <div class="col-md-8 col-sm-6 col-xs-12 form-group has-feedback">
                                                    <input type="text" class="form-control has-feedback-left" name='kategori' id="inputSuccess2" placeholder="Kategori Ad&#305;" required="required">
                                                    <span class="fa fa-shopping-cart form-control-feedback left" aria-hidden="true"></span>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
                                                    <button type="submit" onclick="myFunction()" class="btn btn-success">Ekle</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Kategori Silme</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <form action='/KategoriSil' method="POST">
                                                <div class="col-md-8 col-sm-6 col-xs-12 form-group has-feedback">
                                                    <select id="heard" class="form-control" name='kategoriSil' required>
                                                        <c:forEach var="c" items="${kategoriSilme}">
                                                            <option value="${c.kategori}">${c.kategori}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
                                                    <button id="sil" type="button" onclick="myFunction2()" class="btn btn-danger">Sil</button>
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