<%@ page import="org.pwjabar.data.Jamaah" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jamaah.label', default: 'Jamaah')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

		<div id="edit-jamaah" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${jamaahInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${jamaahInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal form-label-left" url="[resource:jamaahInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${jamaahInstance?.version}" />
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
