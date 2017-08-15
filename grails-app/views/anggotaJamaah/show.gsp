
<%@ page import="org.pwjabar.data.AnggotaJamaah" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'anggotaJamaah.label', default: 'AnggotaJamaah')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-anggotaJamaah" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list anggotaJamaah">
                <table class="table">
			
				<g:if test="${anggotaJamaahInstance?.nama}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="nama-label" class="property-label"><g:message code="anggotaJamaah.nama.label" default="Nama" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${anggotaJamaahInstance}" field="nama"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${anggotaJamaahInstance?.jenisKelamin}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="jenisKelamin-label" class="property-label"><g:message code="anggotaJamaah.jenisKelamin.label" default="Jenis Kelamin" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${anggotaJamaahInstance}" field="jenisKelamin"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${anggotaJamaahInstance?.status}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="status-label" class="property-label"><g:message code="anggotaJamaah.status.label" default="Status" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${anggotaJamaahInstance}" field="status"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${anggotaJamaahInstance?.jamaah}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="jamaah-label" class="property-label"><g:message code="anggotaJamaah.jamaah.label" default="Jamaah" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="jamaah-label"><g:link controller="jamaah" action="show" id="${anggotaJamaahInstance?.jamaah?.id}">${anggotaJamaahInstance?.jamaah?.nama?.encodeAsHTML()}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${anggotaJamaahInstance?.umur}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="umur-label" class="property-label"><g:message code="anggotaJamaah.umur.label" default="Umur" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="umur-label"><g:fieldValue bean="${anggotaJamaahInstance}" field="umur"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:anggotaJamaahInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${anggotaJamaahInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
