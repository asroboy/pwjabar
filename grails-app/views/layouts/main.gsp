<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${resource(dir: 'vendors', file: '/jquery/dist/jquery.min.js')}"></script>
    <script src="${resource(dir: 'vendors', file: '/jquery/dist/jquery.js')}"></script>

    %{--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>--}%


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>


    %{--<link href="${resource(dir: 'vendors', file: '/bootstrap/dist/css/bootstrap.min.css')}" rel="stylesheet">--}%
    <link href="${resource(dir: 'vendors', file: '/font-awesome/css/font-awesome.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'vendors', file: '/nprogress/nprogress.css')}" rel="stylesheet">
    <link href="${resource(dir: 'vendors', file: '/iCheck/skins/flat/green.css')}" rel="stylesheet">
    <link href="${resource(dir: 'vendors', file: '/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}"
          rel="stylesheet">
    <link href="${resource(dir: 'vendors', file: '/jqvmap/dist/jqvmap.min.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'vendors', file: '/bootstrap-daterangepicker/daterangepicker.css')}" rel="stylesheet">
    <link href="${resource(dir: 'build', file: '/css/custom.min.css')}" rel="stylesheet">


    <g:layoutHead/>
    <g:javascript library="application"/>
    <r:layoutResources/>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <g:render template="/layouts/left_nav"/>
        <g:render template="/layouts/top_nav"/>

        <!-- page content -->
        <div class="right_col" role="main">
            <g:layoutBody/>
            <r:layoutResources/>
        </div>
        <!-- /page content -->
        <!-- footer content -->
        <g:render template="/layouts/footer"/>
        <!-- /footer content -->
    </div>
</div>


%{--<script src="${resource(dir: 'vendors', file: '/jQuery-Smart-Wizard/js/jquery-1.4.2.min.js')}"></script>\--}%
<script src="${resource(dir: 'vendors', file: '/jquery-sparkline/dist/jquery.sparkline.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/jquery-sparkline/dist/jquery.sparkline.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/bootstrap/dist/js/bootstrap.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/fastclick/lib/fastclick.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/nprogress/nprogress.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/Chart.js/dist/Chart.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/gauge.js/dist/gauge.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/bootstrap-progressbar/bootstrap-progressbar.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/iCheck/icheck.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/skycons/skycons.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/Flot/jquery.flot.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/Flot/jquery.flot.pie.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/Flot/jquery.flot.time.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/Flot/jquery.flot.stack.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/Flot/jquery.flot.resize.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/flot.orderbars/js/jquery.flot.orderBars.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/flot-spline/js/jquery.flot.spline.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/flot.curvedlines/curvedLines.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/DateJS/build/date.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/jqvmap/dist/jquery.vmap.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/jqvmap/dist/maps/jquery.vmap.world.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/jqvmap/examples/js/jquery.vmap.sampledata.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/moment/min/moment.min.js')}"></script>
<script src="${resource(dir: 'vendors', file: '/bootstrap-daterangepicker/daterangepicker.js')}"></script>
<script src="${resource(dir: 'build', file: '/js/custom.min.js')}"></script>

</body>
</html>
