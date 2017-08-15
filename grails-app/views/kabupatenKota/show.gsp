
<%@ page import="org.pwjabar.data.KabupatenKota" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kabupatenKota.label', default: 'KabupatenKota')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-kabupatenKota" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list kabupatenKota">
                <table class="table">
			
				<g:if test="${kabupatenKotaInstance?.nama}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="nama-label" class="property-label"><g:message code="kabupatenKota.nama.label" default="Nama" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${kabupatenKotaInstance}" field="nama"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${kabupatenKotaInstance?.provinsi}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="provinsi-label" class="property-label"><g:message code="kabupatenKota.provinsi.label" default="Provinsi" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="provinsi-label"><g:fieldValue bean="${kabupatenKotaInstance}" field="provinsi"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:kabupatenKotaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${kabupatenKotaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
