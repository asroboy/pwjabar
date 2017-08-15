<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">
            <li><a><i class="fa fa-book"></i> Pendataan <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    %{--<li><a href="${createLink(controller: 'test', action: 'index')}">Test</a></li>--}%
                    <li><a href="${createLink(controller: 'kabupatenKota', action: 'index')}">Kabupaten Kota</a></li>
                    <li><a href="${createLink(controller: 'kecamatan', action: 'index')}">Kecamatan</a></li>
                    <li><a href="${createLink(controller: 'desa', action: 'index')}">Desa</a></li>
                    <li><a href="${createLink(controller: 'personil', action: 'index')}">Personil</a></li>
                    <li><a href="${createLink(controller: 'susunanKepersonilan', action: 'index')}">Susunan Kepersonilan</a></li>
                    <li><a href="${createLink(controller: 'jamaah', action: 'index')}">Jamaah</a></li>
                    <li><a href="${createLink(controller: 'anggotaJamaah', action: 'index')}">Anggota Jamaah</a></li>

                </ul>
            </li>

            <li><a><i class="fa fa-file-archive-o"></i> Dokumen <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    %{--<li><a href="${createLink(controller: 'test', action: 'index')}">Test</a></li>--}%
                    <li><a href="${createLink(controller: 'suratMasuk', action: 'index')}">Surat Masuk</a></li>

                </ul>
            </li>


    </div>


</div>
<!-- /sidebar menu -->