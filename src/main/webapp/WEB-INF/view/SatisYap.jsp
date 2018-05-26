<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Satis Yap | </title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Dropzone.js -->
        <link href="static/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="static/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/css/custom.min.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="static/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="static/js/ion.rangeSlider.js"></script>
        <script>
            var i = 1;
            function addUrun() {
                $('<div class="form-group" id="urun' + i + '" ><div class="col-md-1 col-sm-6 col-xs-12"><a onclick="removeUrun(' + i + ')" class="btn btn-danger btn-large"><i class="glyphicon glyphicon-minus"></i></a></div> <div class="col-md-3 col-sm-6 col-xs-12"><input style="text-align: center;" id="urunAdi' + i + '" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-1 col-sm-6 col-xs-12"><input value="0" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-2 col-sm-6 col-xs-12"><input value="0" style="text-align: center;" id="birimFiyati' + i + '" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-1 col-sm-6 col-xs-12"><input value="%8" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-1 col-sm-6 col-xs-12"><input value="0" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-2 col-sm-6 col-xs-12"><input disabled value="0" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div></div>').appendTo("#urunlist");
                $("#datatable-buttons tr").click(function () {
                    var index = this.rowIndex;
                    $("#urunAdi" + i).val(document.getElementById("datatable-buttons").rows[index].cells[1].innerHTML);
                    $('#birimFiyati' + i).val(document.getElementById("datatable-buttons").rows[index].cells[4].innerHTML);
                    i++;
                });
            }

            function removeUrun(id) {
                $("#urun" + id).remove();
            }

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
                                    <h2>Satis Yap</h2>                                                  
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="x_content">                                                        
                                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                            <div class="form-group" style="text-align: center;">
                                                <label class=" col-md-1 col-sm-3 col-xs-12" for="first-name"></label>
                                                <label class=" col-md-3 col-sm-3 col-xs-12" for="first-name">Urun Adi</label>
                                                <label class=" col-md-1 col-sm-3 col-xs-12" for="first-name">Miktar</label>
                                                <label class=" col-md-2 col-sm-3 col-xs-12" for="first-name">Birim Fiyati</label>
                                                <label class=" col-md-1 col-sm-3 col-xs-12" for="first-name">KDV</label>
                                                <label class=" col-md-1 col-sm-3 col-xs-12" for="first-name">Iskonto(TL)</label>      
                                                <label class=" col-md-2 col-sm-3 col-xs-12" for="first-name">Genel Toplam</label>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group" id='urunlist'>         
                                                <!--<div class="col-md-1 col-sm-6 col-xs-12">
                                                    <a href="#" class="btn btn-danger btn-large"><i class="glyphicon glyphicon-minus"></i></a>
                                                </div> 
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>                                            
                                                <div class="col-md-1 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>                                            
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                                <div class="col-md-1 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                                <div class="col-md-1 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>-->
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Islem Tarihi
                                                </label>
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" data-inputmask="'mask': '99/99/9999'" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Aciklama</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <textarea type="text" id="" name="" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Islem Tutari
                                                </label>
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <button type="submit" class="btn btn-success">Satis Yap</button>
                                                    <button type="submit" class="btn btn-warning">Borclandir</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Urunler</h2>                                                  
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">                                                        
                                <table id="datatable-buttons" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>                                                        
                                            <th>Kategori</th>
                                            <th>Urun Adi</th>
                                            <th style="width: 10%">Stok Sayisi</th>
                                            <th style="width: 10%">Toplam Stok Fiyati</th>
                                            <th style="width: 10%">Birim Fiyati</th>
                                            <th style="width: 5%">Ekle</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="c" items="${urunList}">
                                        <tr>                                            
                                            <td>${c.kategori}</td>
                                            <td>${c.urunAdi}</td>
                                            <td>${c.stokAdedi}</td>
                                            <td>${c.stokAdedi}</td>
                                            <td>${c.satisFiyati}</td>
                                            <td><a onclick="addUrun()" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i></a></td>
                                        </tr>
                                    </c:forEach>                                    
                                </tbody>
                            </table>
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
        <script src="static/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="static/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="static/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="static/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="static/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
        <script src="static/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <script src="static/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="static/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
        <script src="static/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
        <script src="static/vendors/jszip/dist/jszip.min.js"></script>
        <script src="static/vendors/pdfmake/build/pdfmake.min.js"></script>
        <script src="static/vendors/pdfmake/build/vfs_fonts.js"></script>
        <!-- jquery.inputmask -->
        <script src="static/vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
        <!-- Google Analytics -->
    </body>
</html>
