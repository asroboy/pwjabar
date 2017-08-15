
<%@ page import="org.pwjabar.data.Jamaah" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jamaah.label', default: 'Jamaah')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-jamaah" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jamaah">
                <table class="table">
			
				<g:if test="${jamaahInstance?.nama}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="nama-label" class="property-label"><g:message code="jamaah.nama.label" default="Nama" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${jamaahInstance}" field="nama"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.desa}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="desa-label" class="property-label"><g:message code="jamaah.desa.label" default="Desa" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="desa-label"><g:link controller="desa" action="show" id="${jamaahInstance?.desa?.id}">${jamaahInstance?.desa?.nama?.encodeAsHTML()}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.hariUsbuiyah}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="hariUsbuiyah-label" class="property-label"><g:message code="jamaah.hariUsbuiyah.label" default="Hari Usbuiyah" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="hariUsbuiyah-label"><g:fieldValue bean="${jamaahInstance}" field="hariUsbuiyah"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.jamUsbuiyah}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="jamUsbuiyah-label" class="property-label"><g:message code="jamaah.jamUsbuiyah.label" default="Jam Usbuiyah" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="jamUsbuiyah-label"><g:fieldValue bean="${jamaahInstance}" field="jamUsbuiyah"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.kelompok}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kelompok-label" class="property-label"><g:message code="jamaah.kelompok.label" default="Kelompok" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kelompok-label"><g:fieldValue bean="${jamaahInstance}" field="kelompok"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.jenisJamaah}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="jenisJamaah-label" class="property-label"><g:message code="jamaah.jenisJamaah.label" default="Jenis Jamaah" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="jenisJamaah-label"><g:fieldValue bean="${jamaahInstance}" field="jenisJamaah"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.rt}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="rt-label" class="property-label"><g:message code="jamaah.rt.label" default="Rt" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="rt-label"><g:fieldValue bean="${jamaahInstance}" field="rt"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${jamaahInstance?.rw}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="rw-label" class="property-label"><g:message code="jamaah.rw.label" default="Rw" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="rw-label"><g:fieldValue bean="${jamaahInstance}" field="rw"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:jamaahInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jamaahInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
