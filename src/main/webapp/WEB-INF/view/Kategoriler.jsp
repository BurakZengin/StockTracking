
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
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Stok Kategorileri</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>           
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
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
                                                                <th>Kategori Adi</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row">1</th>
                                                                <td>Turk Kahvesi</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">2</th>
                                                                <td>Pure</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">3</th>
                                                                <td>Sos</td>
                                                            </tr>
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
                                                    <div class="col-md-8 col-sm-6 col-xs-12 form-group has-feedback">
                                                        <input type="text" class="form-control has-feedback-left" id="inputSuccess2" placeholder="Kategori Adi">
                                                        <span class="fa fa-shopping-cart form-control-feedback left" aria-hidden="true"></span>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
                                                        <button type="submit" class="btn btn-success">Ekle</button>
                                                    </div>
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
                                                    <div class="col-md-8 col-sm-6 col-xs-12 form-group has-feedback">
                                                        <select id="heard" class="form-control" required>
                                                            <option value="">Sec..</option>
                                                            <option value="press">Turk Kahvesi</option>
                                                            <option value="net">Pure</option>
                                                            <option value="mouth">Sos</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
                                                        <button type="submit" class="btn btn-danger">Sil</button>
                                                    </div>
                                                </div>
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

        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
    </body>
</html>