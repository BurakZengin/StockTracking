<%-- 
    Document   : header
    Created on : Mar 3, 2018, 6:27:56 PM
    Author     : Elidor
--%>

<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="/StokTakip/Home" class="site_title"><i class="fa fa-paw"></i> <span> Stok Takip</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="static/images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Hosgeldiniz,</span>
                <h2 style="text-transform: capitalize;">${name}${surname}</h2>
            </div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Genel</h3>
                <ul class="nav side-menu">
                    <li><a href="/StokTakip/Anasayfa"><i class="fa fa-home"></i> Ana Sayfa</a></li>
                    <li><a><i class="fa fa-line-chart"></i> Stok <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="/StokTakip/StokTakp">Stok Takip</a></li>
                            <li><a href="/StokTakip/Kategoriler">Kategoriler</a></li>
                            <li><a href="/StokTakip/UrunEkleme">Ürün Ekleme</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-users"></i> Cari Hesaplar <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="/StokTakip/CariTakip">Cari Takip</a></li>
                            <li><a href="/StokTakip/CariEkle">Cari Ekle</a></li>
                        </ul>
                    </li>
                    <li><a href="/StokTakip/Kasa"><i class="fa fa-money"></i> Kasa</a></li>
                    <li><a href="/StokTakip/Fatura"><i class="fa fa-credit-card"></i> Fatura</a></li>
                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->

        <!-- /menu footer buttons -->
    </div>
</div>

<!-- top navigation -->
<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="javascript:;" class="user-profile dropdown-toggle" style="text-transform: capitalize;" data-toggle="dropdown" aria-expanded="false">
                        <img src="static/images/img.jpg" alt="">${name}
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a href="/StokTakip/Logout"><i class="fa fa-sign-out pull-right"></i> Cikis Yap</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>
<!-- /top navigation -->