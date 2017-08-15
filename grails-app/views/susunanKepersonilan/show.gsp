
<%@ page import="org.pwjabar.data.SusunanKepersonilan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'susunanKepersonilan.label', default: 'SusunanKepersonilan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-susunanKepersonilan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list susunanKepersonilan">
                <table class="table">
			
				<g:if test="${susunanKepersonilanInstance?.tingkat}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="tingkat-label" class="property-label"><g:message code="susunanKepersonilan.tingkat.label" default="Tingkat" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="tingkat-label"><g:fieldValue bean="${susunanKepersonilanInstance}" field="tingkat"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.provinsi}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="provinsi-label" class="property-label"><g:message code="susunanKepersonilan.provinsi.label" default="Provinsi" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="provinsi-label"><g:fieldValue bean="${susunanKepersonilanInstance}" field="provinsi"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.kabupatenKota}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kabupatenKota-label" class="property-label"><g:message code="susunanKepersonilan.kabupatenKota.label" default="Kabupaten Kota" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kabupatenKota-label"><g:link controller="kabupatenKota" action="show" id="${susunanKepersonilanInstance?.kabupatenKota?.id}">${susunanKepersonilanInstance?.kabupatenKota?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.kecamatan}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kecamatan-label" class="property-label"><g:message code="susunanKepersonilan.kecamatan.label" default="Kecamatan" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kecamatan-label"><g:link controller="kecamatan" action="show" id="${susunanKepersonilanInstance?.kecamatan?.id}">${susunanKepersonilanInstance?.kecamatan?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.desa}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="desa-label" class="property-label"><g:message code="susunanKepersonilan.desa.label" default="Desa" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="desa-label"><g:link controller="desa" action="show" id="${susunanKepersonilanInstance?.desa?.id}">${susunanKepersonilanInstance?.desa?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.khidmahMulai}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="khidmahMulai-label" class="property-label"><g:message code="susunanKepersonilan.khidmahMulai.label" default="Khidmah Mulai" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="khidmahMulai-label"><g:fieldValue bean="${susunanKepersonilanInstance}" field="khidmahMulai"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.khidmahSampai}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="khidmahSampai-label" class="property-label"><g:message code="susunanKepersonilan.khidmahSampai.label" default="Khidmah Sampai" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="khidmahSampai-label"><g:fieldValue bean="${susunanKepersonilanInstance}" field="khidmahSampai"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanInstance?.resuffleKe}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="resuffleKe-label" class="property-label"><g:message code="susunanKepersonilan.resuffleKe.label" default="Resuffle Ke" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="resuffleKe-label"><g:fieldValue bean="${susunanKepersonilanInstance}" field="resuffleKe"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:susunanKepersonilanInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${susunanKepersonilanInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
