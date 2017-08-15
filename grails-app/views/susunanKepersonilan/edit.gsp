<%@ page import="org.pwjabar.data.SusunanKepersonilan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'susunanKepersonilan.label', default: 'SusunanKepersonilan')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

		<div id="edit-susunanKepersonilan" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${susunanKepersonilanInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${susunanKepersonilanInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal form-label-left" url="[resource:susunanKepersonilanInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${susunanKepersonilanInstance?.version}" />
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
