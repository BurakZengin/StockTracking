<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Cari Ekleme | </title>

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
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Cari Ekle</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <!-- Smart Wizard -->
                                    <div id="wizard" class="form_wizard wizard_horizontal">
                                        <ul class="wizard_steps">
                                            <li>
                                                <a href="#step-1">
                                                    <span class="step_no">1</span>
                                                    <span class="step_descr">
                                                        Cari Bilgileri<br />
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-2">
                                                    <span class="step_no">2</span>
                                                    <span class="step_descr">
                                                        Iletisim Bilgileri<br />
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-3">
                                                    <span class="step_no">3</span>
                                                    <span class="step_descr">
                                                        Banka Bilgileri<br />
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                        <form class="form-horizontal form-label-left" action='/CariEkle' method="POST">
                                            <div id="step-1">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Unvan
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" name="unvan" class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Yetkili
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" name="yetkili" class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Vergi Dairesi</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="vergiDairesi">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Vergi Dairesi No</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="vergiDairesiNo">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Ticaret Sicil No</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="ticaretSicilNo">
                                                    </div>
                                                </div>

                                            </div>
                                            <div id="step-2">

                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Adres
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <textarea type="text" id="" name="adres" rows="3" style="resize: vertical;" class="form-control col-md-7 col-xs-12" ></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Telefon
                                                    </label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input type="text" data-inputmask="'mask' : '(999) 999-9999'" name="telefon" placeholder="(507) 456-7890" class="form-control col-md-7 col-xs-12"/>
                                                    </div>
                                                    <label for="middle-name" class="control-label col-md-2 col-sm-3 col-xs-12">Fax</label>
                                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="fax">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Mail</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="mail">
                                                    </div>
                                                </div>

                                            </div>
                                            <div id="step-3">

                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Banka Adi
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="first-name" class="form-control col-md-7 col-xs-12" name="bankaAdi">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Sube
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="last-name" name="sube" class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Sube No</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="subeNo">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Hesap No</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="hesapNo">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">IBAN</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="iban">
                                                    </div>
                                                </div>
                                                <div class="actionBar" style="display: flex;
                                                     align-items: center;
                                                     justify-content: center;">
                                                    <button type="submit" class="btn btn-success">Kaydet</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- End SmartWizard Content -->
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="x_content">
                                <div class="col-md-12 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Cari Silme</h2>                                                  
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <br />
                                            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action='/CariSil' method="POST">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Cari</label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <select id="heard" class="form-control" name="cari">
                                                        <c:forEach var="c" items="${cariList}">                                                               
                                                            <option value="${c.yetkili}">${c.yetkili}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="display: flex;
                                                     align-items: center;
                                                     justify-content: center;">
                                                    <button type="submit" class="btn btn-danger" >Sil</button>
                                                </div>
                                            </div>
                                        </form>
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
        <!-- jQuery Smart Wizard -->
        <script src="static/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
        <!-- jquery.inputmask -->
        <script src="static/vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="static/js/custom.min.js"></script>
        <!-- Google Analytics -->
    </body>
</html>
