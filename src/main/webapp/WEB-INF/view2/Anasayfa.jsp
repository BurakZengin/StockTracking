<%-- 
    Document   : home
    Created on : Feb 28, 2018, 1:49:32 PM
    Author     : rds
--%>



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
                                <span class="count_top"><i class="fa fa-users"></i> Mü&#351;teriler</span>
                                <div class="count">${musteriSayisi}</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-dollar"></i> Ayl&#305;k Kar</span>
                            <div class="count green">${aylikKar} &#8378</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-money"></i> Toplam Vade</span>
                            <div class="count dark">${toplamVade} &#8378</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-battery-half"></i> Sto&#287;u Biten Ürünler</span>
                            <div class="count red">${stokBitenUrunler}</div>                            
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-line-chart"></i> Toplam Stok De&#287;eri</span>
                            <div class="count">${stokDegeri} &#8378</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-money"></i> Gün Sonu Kar</span>
                            <div class="count">${gunlukKar} &#8378</div>                            
                        </div>
                    </div>
                    <!-- /top tiles -->
                    <input type="hidden" id="aylikSatisGrafik" value="${aylikSatisGrafik}">
                    <input type="hidden" id="aylikGiderGrafik" value="${haftalikGider}">
                    <input type="hidden" id="aylikCiroGrafik" value="${toplamCiro}">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard_graph">

                                <div class="row x_title">
                                    <div class="col-md-6">
                                        <h3>Haftal&#305;k Ciro Da&#287;&#305;l&#305;m&#305;</h3>
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
                                    <h2>Haftal&#305;k Sat&#305;&#351;  Da&#287;&#305;l&#305;m&#305;</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="demo-container" style="height:280px">
                                            <div id="chart_plot_02" class="demo-placeholder"></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Haftal&#305;k Gider Da&#287;&#305;l&#305;m&#305;</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="demo-container" style="height:280px">
                                            <div id="chart_plot_021" class="demo-placeholder"></div>
                                        </div>

                                    </div>
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

        <script>
            //Chart.defaults.global.legend = {enabled: false};
            /*
             var ctx = document.getElementById("chart_plot_01");
             var lineChart = new Chart(ctx, {
             type: 'line',
             data: {
             labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange", "Pink"],
             datasets: [{
             label: 'Omer',
             backgroundColor: "rgba(38,185,154,0.31)",
             borderColor: "rgba(38,185,154,0.7)",
             pointBorderColor: "rgba(38,185,154,0.7)",
             pointBackGroundColor: "rgba(38,185,154,0.7)",
             pointHoverBackroundColor: "#fff",
             pointHoverBorderColor: "rgba(220,220,220,1)",
             pointBorderWindth: 1,
             data: [31, 74, 6, 39, 20, 85, 7]}
             , {
             label: 'Omer2',
             backgroundColor: "rgba(38,185,154,0.31)",
             borderColor: "rgba(38,185,154,0.7)",
             pointBorderColor: "rgba(38,185,154,0.7)",
             pointBackGroundColor: "rgba(38,185,154,0.7)",
             pointHoverBackroundColor: "#fff",
             pointHoverBorderColor: "rgba(220,220,220,1)",
             pointBorderWindth: 1,
             data: [99, 14, 77, 19, 70, 85, 7]
             }]
             },
             });
             */
        </script>

    </body>
</html>