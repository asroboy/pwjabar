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
    <link href="${resource(dir: 'vendors', file: '/bootstrap/dist/css/bootstrap.min.css')}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${resource(dir: 'vendors', file: '/font-awesome/css/font-awesome.min.css')}" rel="stylesheet">
    <!-- NProgress -->
    <link href="${resource(dir: 'vendors', file: '/nprogress/nprogress.css')}" rel="stylesheet">
    <!-- Animate.css -->
    <link href="${resource(dir: 'vendors', file: '/animate.css/animate.min.css')}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${resource(dir: 'build', file: '/css/custom.min.css')}" rel="stylesheet">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <g:layoutBody/>

</div>
<r:layoutResources />
</body>
</html>
