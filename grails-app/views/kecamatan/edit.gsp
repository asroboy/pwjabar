<%@ page import="org.pwjabar.data.Kecamatan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kecamatan.label', default: 'Kecamatan')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

		<div id="edit-kecamatan" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${kecamatanInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${kecamatanInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal form-label-left" url="[resource:kecamatanInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${kecamatanInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
