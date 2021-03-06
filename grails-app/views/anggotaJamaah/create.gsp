<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'anggotaJamaah.label', default: 'AnggotaJamaah')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
%{--<a href="#create-anggotaJamaah" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li>--}%
<g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>
%{--</li>--}%
%{--</ul>--}%
%{--</div>--}%
<div id="create-anggotaJamaah" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${anggotaJamaahInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${anggotaJamaahInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form class="form-horizontal form-label-left" url="[resource: anggotaJamaahInstance, action : 'save']" >
    <fieldset class="form">
        <g:render template="form"/>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save btn btn-success"
                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </fieldset>
    </g:form>
</div>
</body>
</html>
