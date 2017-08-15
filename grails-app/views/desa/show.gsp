
<%@ page import="org.pwjabar.data.Desa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'desa.label', default: 'Desa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-desa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list desa">
                <table class="table">
			
				<g:if test="${desaInstance?.nama}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="nama-label" class="property-label"><g:message code="desa.nama.label" default="Nama" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${desaInstance}" field="nama"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${desaInstance?.kecamatan}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kecamatan-label" class="property-label"><g:message code="desa.kecamatan.label" default="Kecamatan" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kecamatan-label"><g:link controller="kecamatan" action="show" id="${desaInstance?.kecamatan?.id}">${desaInstance?.kecamatan?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:desaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${desaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
