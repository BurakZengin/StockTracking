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
        <!-- PNotify -->
        <link href="static/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
        <link href="static/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
        <!-- Bootstrap -->
        <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="static/js/ion.rangeSlider.js"></script>
        <script>
            var i = 0, k = 1, counter = 0, counterKar = 0, kar = 0;
            var arr = new Array();
            var arrKar = new Array();
            var urunler = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
            function addUrun() {
                i++;
                urunler[i] = "" + i;
                $('<div class="form-group" id="urun' + i + '" ><div class="col-md-1 col-sm-6 col-xs-12"><a onclick="removeUrun(' + i + ')" class="btn btn-danger btn-large"><i class="glyphicon glyphicon-minus"></i></a></div> <div class="col-md-3 col-sm-6 col-xs-12"><input readonly="true" style="text-align: center;" id="urunAdi' + i + '" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-1 col-sm-6 col-xs-12"><input onkeyup="OnButtonClick(' + i + ')" onkeypress="return sadeceSayi(event)" name="miktar' + i + '" id="miktar' + i + '" value="1" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-2 col-sm-6 col-xs-12"><input onkeyup="OnButtonClick(' + i + ')" onkeypress="return sadeceSayi(event)" id="birimFiyati' + i + '" value="0" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-1 col-sm-6 col-xs-12"><input onkeyup="OnButtonClick(' + i + ')" onkeypress="return sadeceSayi(event)" id="kdv' + i + '" value="8" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-1 col-sm-6 col-xs-12"><input onkeyup="OnButtonClick(' + i + ')" onkeypress="return sadeceSayi(event)" id="iskonto' + i + '" value="0" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><div class="col-md-2 col-sm-6 col-xs-12"><input id="toplam' + i + '" readonly="true" value="0" style="text-align: center;" type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12"></div><input style="display: none;" id="alisFiyat' + i + '" readonly="true" value="0" style="text-align: center;" type="text"  required="required" class="form-control col-md-7 col-xs-12"></div></div>').appendTo("#urunlist");
                $("#datatable-buttons tr").click(function () {
                    var index = this.rowIndex;
                    $("#urunAdi" + i).val(document.getElementById("datatable-buttons").rows[index].cells[1].innerHTML);
                    $('#birimFiyati' + i).val(document.getElementById("datatable-buttons").rows[index].cells[4].innerHTML);
                    $('#alisFiyat' + i).val(document.getElementById("datatable-buttons").rows[index].cells[6].innerHTML);
                    var miktar1 = document.getElementById("miktar" + i).value;
                    var birimFiyat1 = document.getElementById("birimFiyati" + i).value;
                    var kdv1 = document.getElementById("kdv" + i).value;
                    var kdvCarpan1 = 1 + kdv1 / 100;
                    var iskonto1 = document.getElementById("iskonto" + i).value;
                    document.getElementById("toplam" + i).value = Math.round(((miktar1 * birimFiyat1 * kdvCarpan1) - iskonto1) * 100) / 100;
                    //alert(document.getElementById("datatable-buttons").rows[index].cells[6].innerHTML);

                    //alert(kar);
                    arrKar[i] = (birimFiyat1 * miktar1 - iskonto1) - miktar1 * parseFloat(document.getElementById("alisFiyat" + (i)).value);//birim*miktar-iskonto- alis fiyat
                    arr[i] = parseFloat(document.getElementById("toplam" + i).value);
                    hesapla();
                });
            }

            function removeUrun(id) {
                urunler[id] = 0;
                arr[id] = 0;
                arrKar[id] = 0;
                $("#urun" + id).remove();
                hesapla();
            }
            function OnButtonClick(l) {
                var miktar = document.getElementById("miktar" + (l)).value;
                var birimFiyat = document.getElementById("birimFiyati" + (l)).value;
                var kdv = document.getElementById("kdv" + (l)).value;
                var kdvCarpan = 1 + kdv / 100;
                var iskonto = document.getElementById("iskonto" + (l)).value;
                document.getElementById("toplam" + l).value = Math.round(((miktar * birimFiyat * kdvCarpan) - iskonto) * 100) / 100;

                arrKar[l] = ((birimFiyat * miktar) - iskonto) - miktar * parseFloat(document.getElementById("alisFiyat" + (l)).value);
                // alert(arrKar.toString());

                arr[l] = parseFloat(document.getElementById("toplam" + l).value);
                hesapla();
            }

            function hesapla() {
                for (j = 1; j < arr.length; j++) {
                    if (arr[j] !== null) {
                        counter += arr[j];
                        counterKar += arrKar[j];
                        document.getElementsByName("islemTutari")[0].value = counter;
                        document.getElementsByName("aciklama")[0].value = counterKar;
                    }
                }
                counter = 0;
                counterKar = 0;
            }

            function sadeceSayi(evt) {
                return (evt.charCode >= 48 && evt.charCode <= 57) || (evt.charCode == 46);
            }

            function urun() {
                if (document.getElementById("islemTutari").value > 0) {
                    urunler = urunler.filter(Number);
                    var str = "";
                    for (var k = 0; k < urunler.length; k++) {
                        str += urunler.length + "-" + document.getElementById("urunAdi" + urunler[k]).value + "-"
                                + document.getElementById("miktar" + urunler[k]).value + "-"
                                + document.getElementById("kdv" + urunler[k]).value + "-"
                                + document.getElementById("iskonto" + urunler[k]).value + "-"
                                + document.getElementById("birimFiyati" + urunler[k]).value + "-"
                                + document.getElementById("toplam" + urunler[k]).value;
                    }
                    document.getElementById("Buttons").value = "Satis";
                    document.getElementById("urunler").value = "" + str;
                    document.getElementById("demo-form2").submit();
                    new PNotify({
                        title: 'Satis islemi gerceklesiyor!',
                        text: 'Lütfen,urunleri kontrol edin.',
                        type: 'success',
                        styling: 'bootstrap3'
                    });
                }
            }

            function urun2() {
                if (document.getElementById("islemTutari").value > 0) {
                    urunler = urunler.filter(Number);
                    var str = "";
                    for (var k = 0; k < urunler.length; k++) {
                        str += urunler.length + "-" + document.getElementById("urunAdi" + urunler[k]).value + "-"
                                + document.getElementById("miktar" + urunler[k]).value + "-"
                                + document.getElementById("kdv" + urunler[k]).value + "-"
                                + document.getElementById("iskonto" + urunler[k]).value + "-"
                                + document.getElementById("birimFiyati" + urunler[k]).value + "-"
                                + document.getElementById("toplam" + urunler[k]).value;
                    }
                    document.getElementById("Buttons").value = "Borc";
                    document.getElementById("urunler").value = "" + str;
                    document.getElementById("demo-form2").submit();
                    new PNotify({
                        title: 'Borclandirma islemi gerceklesiyor!',
                        text: 'Lütfen,urunleri kontrol edin.',
                        type: 'warning',
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
                    <!-- page content -->
                    <div class="right_col" role="main">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Satis Yap</h2>                                                  
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <div class="x_content">                                                        
                                            <form id="demo-form2" name="formss" data-parsley-validate class="form-horizontal form-label-left" action="/SatisYap=${idCari}" method="POST">
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
                                            <div class="form-group" id='urunlist'></div>
                                            <div class="ln_solid"></div>
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
                                                    <textarea type="text" id="aciklama" name="aciklama" required="required" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Islem Tutari
                                                </label>
                                                <div class="col-md-2 col-sm-6 col-xs-12">
                                                    <input readonly="true" type="text" id="islemTutari" name="islemTutari" value="0" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <input type="hidden" id="urunler" name="urunler"/>
                                            <input type="hidden" id="Buttons" name="Buttons"/>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <button type="button" onclick="urun()" class="btn btn-success"/>Satis Yap
                                                    <button type="button" onclick="urun2()" class="btn btn-warning"/>Borclandir
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
                                                    <td style="display: none;">${c.alisFiyati}</td>
                                                </tr>
                                            </c:forEach>                                    
                                        </tbody>
                                    </table>
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
        <!-- PNotify -->
        <script src="static/vendors/pnotify/dist/pnotify.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.buttons.js"></script>
        <script src="static/vendors/pnotify/dist/pnotify.nonblock.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
        <!-- Google Analytics -->
    </body>
</html>
