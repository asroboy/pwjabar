<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'suratMasuk.label', default: 'SuratMasuk')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    %{--<link rel="stylesheet" href="/resources/demos/style.css">--}%
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $jQuery( function() {
            $jQuery( "#datepicker" ).datepicker();
        } );
    </script>
</head>

<body>
%{--<a href="#create-suratMasuk" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li>--}%
<g:link class="btn btn-default" action="index">Daftar Surat Masuk</g:link>
%{--</li>--}%
%{--</ul>--}%
%{--</div>--}%
<div id="create-suratMasuk" class="content scaffold-create" role="main">
    <h1>Buat Surat Masuk Baru</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${suratMasukInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${suratMasukInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form class="form-horizontal form-label-left" url="[resource: suratMasukInstance, action: 'save']"
            enctype="multipart/form-data">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save btn btn-success"
                            value="Simpan"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
