
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kasa Giris | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="static/js/ion.rangeSlider.js"></script>
        <script>
            function myFunction() {
            //var kdv1 = document.getElementById("kdv" + (i)).value;
            var txt = document.getElementById('1');
            var txt1 = document.getElementById('2');
            var txt2 = document.getElementById('3');
            if (txt.value != "" && txt1.value != "" && txt2.value != "")
            {

            new PNotify({
            title: 'Kasaya giris yapiliyor!',
                    text: 'Kasayi kontrol edin.',
                    type: 'success',
                    styling: 'bootstrap3'
            });
            }
            }

            function myFunction2() {

            new PNotify({
            title: 'Ürün siliniyor!',
                    text: 'Ürünleri kontrol edin.',
                    type: 'error',
                    styling: 'bootstrap3'
            });
            }


            $(function() {
            $("#dialog-confirm").dialog({
            resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                    "Delete all items": function() {
                    $(this).dialog("close");
                    },
                            Cancel: function() {
                            $(this).dialog("close");
                            }
                    }
            });
            });
        </script>

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
                                <h2>Kasaya Giris Yap</h2>                                                  
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="x_content">                                                        
                                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Islem Tarihi
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <input type="text" id="1" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>                                        
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Aciklama</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea type="text" id="2" name="" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tutar
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="text" id="3" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" class="btn btn-success" onclick="myFunction()" >Kaydet</button>
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

        <script src="static/porto/jquery.js"></script>
        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="static/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="static/vendors/nprogress/nprogress.js"></script>
        <!-- PNotify -->
        <script src="static/vendors/pnotify/dist/pnotify.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.buttons.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.nonblock.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>

        <!-- Google Analytics -->
    </body>
</html>
