<%-- 
    Document   : home
    Created on : Feb 28, 2018, 1:49:32 PM
    Author     : rds
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="static/images/icons/favicon.ico" type="image/ico" />

        <title>Anasayfa | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="static/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- bootstrap-progressbar -->
        <link href="static/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="static/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
        <!-- bootstrap-daterangepicker -->
        <link href="static/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <jsp:include page="header.jsp"></jsp:include>
                    <!-- page content -->
                    <div class="right_col" role="main">
                        <!-- top tiles -->
                        <div class="row tile_count text-center">
                            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                                <span class="count_top"><i class="fa fa-users"></i> Musteriler</span>
                                <div class="count">${musteriSayisi}</div>
                            <span class="count_bottom"><i class="green">4% </i> Gecen Haftadan</span>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-dollar"></i> Aylik Kar</span>
                            <div class="count green">123.50 $</div>
                            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> Gecen Haftadan</span>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-money"></i> Toplam Vade</span>
                            <div class="count dark">${toplamVade} $</div>
                            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> Gecen Haftadan</span>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-battery-half"></i> Stogu Biten Urunler</span>
                            <div class="count red">${stokBitenUrunler}</div>
                            <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> Gecen Haftadan</span>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-line-chart"></i> Toplam Stok Degeri</span>
                            <div class="count">${stokDegeri} $</div>
                            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> Gecen Haftadan</span>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-money"></i> Gun Sonu Kar</span>
                            <div class="count">7,325 $</div>
                            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> Gecen Haftadan</span>
                        </div>
                    </div>
                    <!-- /top tiles -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard_graph">

                                <div class="row x_title">
                                    <div class="col-md-6">
                                        <h3>Haftalik Ciro Dagilimi</h3>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div id="chart_plot_01" class="demo-placeholder"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Haftalik Satis Dagilimi</h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="demo-container" style="height:280px">
                                            <div id="chart_plot_02" class="demo-placeholder"></div>
                                        </div>
                                        <div class="tiles">
                                            <div class="col-md-4 tile">
                                                <span>Total Sessions</span>
                                                <h2>231,809</h2>
                                                <span class="sparkline11 graph" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                            <div class="col-md-4 tile">
                                                <span>Total Revenue</span>
                                                <h2>$231,809</h2>
                                                <span class="sparkline22 graph" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                            <div class="col-md-4 tile">
                                                <span>Total Sessions</span>
                                                <h2>231,809</h2>
                                                <span class="sparkline11 graph" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-8 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Haftalik Gider Dagilimi</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div id="mainb" style="height:350px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <!-- /footer content -->
            </div>
        </div>

        <script src="static/porto/jquery.js"></script>   
        <script src="static/porto/plugins.js"></script>

        <!-- Theme Initializer -->
        <script src="static/porto/theme.js"></script>

        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="static/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="static/vendors/nprogress/nprogress.js"></script>
        <!-- Chart.js -->
        <script src="static/vendors/Chart.js/dist/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="static/vendors/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="static/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="static/vendors/iCheck/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="static/vendors/skycons/skycons.js"></script>
        <!-- Flot -->
        <script src="static/vendors/Flot/jquery.flot.js"></script>
        <script src="static/vendors/Flot/jquery.flot.pie.js"></script>
        <script src="static/vendors/Flot/jquery.flot.time.js"></script>
        <script src="static/vendors/Flot/jquery.flot.stack.js"></script>
        <script src="static/vendors/Flot/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="static/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
        <script src="static/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
        <script src="static/vendors/flot.curvedlines/curvedLines.js"></script>
        <!-- DateJS -->
        <script src="static/vendors/DateJS/build/date.js"></script>
        <!-- JQVMap -->
        <script src="static/vendors/jqvmap/dist/jquery.vmap.js"></script>
        <script src="static/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
        <script src="static/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="static/vendors/moment/min/moment.min.js"></script>
        <script src="static/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- PNotify -->
        <script src="static/vendors/pnotify/dist/pnotify.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.buttons.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.nonblock.js"></script>
        <!-- ECharts -->
        <script src="static/vendors/echarts/dist/echarts.min.js"></script>
        <script src="static/vendors/echarts/map/js/world.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>

    </body>
</html>
