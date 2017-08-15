
<%@ page import="org.pwjabar.data.SusunanKepersonilanDetil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'susunanKepersonilanDetil.label', default: 'SusunanKepersonilanDetil')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-susunanKepersonilanDetil" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list susunanKepersonilanDetil">
                <table class="table">
			
				<g:if test="${susunanKepersonilanDetilInstance?.personil}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="personil-label" class="property-label"><g:message code="susunanKepersonilanDetil.personil.label" default="Personil" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="personil-label"><g:link controller="personil" action="show" id="${susunanKepersonilanDetilInstance?.personil?.id}">${susunanKepersonilanDetilInstance?.personil?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanDetilInstance?.jabatan}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="jabatan-label" class="property-label"><g:message code="susunanKepersonilanDetil.jabatan.label" default="Jabatan" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="jabatan-label"><g:fieldValue bean="${susunanKepersonilanDetilInstance}" field="jabatan"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanDetilInstance?.departemen}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="departemen-label" class="property-label"><g:message code="susunanKepersonilanDetil.departemen.label" default="Departemen" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="departemen-label"><g:link controller="departemen" action="show" id="${susunanKepersonilanDetilInstance?.departemen?.id}">${susunanKepersonilanDetilInstance?.departemen?.nama}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${susunanKepersonilanDetilInstance?.susunanKepersonilan}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="susunanKepersonilan-label" class="property-label"><g:message code="susunanKepersonilanDetil.susunanKepersonilan.label" default="Susunan Kepersonilan" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="susunanKepersonilan-label"><g:link controller="susunanKepersonilan" action="show" id="${susunanKepersonilanDetilInstance?.susunanKepersonilan?.id}">${susunanKepersonilanDetilInstance?.susunanKepersonilan?.tingkat}</g:link></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:susunanKepersonilanDetilInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${susunanKepersonilanDetilInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
