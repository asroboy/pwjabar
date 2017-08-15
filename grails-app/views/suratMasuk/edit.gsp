<%@ page import="org.pwjabar.data.SuratMasuk" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'suratMasuk.label', default: 'SuratMasuk')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>

<g:link class="btn btn-default" action="index">Daftar Surat Masuk</g:link>
<g:link class="btn btn-default" action="create">Surat Masuk Baru</g:link>

<div id="edit-suratMasuk" class="content scaffold-edit" role="main">
    <h1>Edit Surat Masuk</h1>
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
%{--method="PUT"--}%
    <g:form class="form-horizontal form-label-left" url="[resource: suratMasukInstance, action: 'update']"
            enctype="multipart/form-data">
        <g:hiddenField name="version" value="${suratMasukInstance?.version}"/>
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:actionSubmit class="save btn btn-success" action="update"
                            value="${message(code: 'default.button.update.label', default: 'Update')}"/>

        </fieldset>
    </g:form>
</div>
</body>
</html>
