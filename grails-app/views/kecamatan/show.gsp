
<%@ page import="org.pwjabar.data.Kecamatan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kecamatan.label', default: 'Kecamatan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-kecamatan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list kecamatan">
                <table class="table">
			
				<g:if test="${kecamatanInstance?.nama}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="nama-label" class="property-label"><g:message code="kecamatan.nama.label" default="Nama" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${kecamatanInstance}" field="nama"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${kecamatanInstance?.kabupatenKota}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kabupatenKota-label" class="property-label"><g:message code="kecamatan.kabupatenKota.label" default="Kabupaten Kota" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kabupatenKota-label"><g:link controller="kabupatenKota" action="show" id="${kecamatanInstance?.kabupatenKota?.id}">${kecamatanInstance?.kabupatenKota?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:kecamatanInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${kecamatanInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
