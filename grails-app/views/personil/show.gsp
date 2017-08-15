
<%@ page import="org.pwjabar.data.Personil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personil.label', default: 'Personil')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <div id="show-personil" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personil">
                <table class="table">
			
				<g:if test="${personilInstance?.nama}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="nama-label" class="property-label"><g:message code="personil.nama.label" default="Nama" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${personilInstance}" field="nama"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.alamat}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="alamat-label" class="property-label"><g:message code="personil.alamat.label" default="Alamat" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="alamat-label"><g:fieldValue bean="${personilInstance}" field="alamat"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.desa}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="desa-label" class="property-label"><g:message code="personil.desa.label" default="Desa" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="desa-label"><g:fieldValue bean="${personilInstance}" field="desa"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.kecamatan}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kecamatan-label" class="property-label"><g:message code="personil.kecamatan.label" default="Kecamatan" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kecamatan-label"><g:fieldValue bean="${personilInstance}" field="kecamatan"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.kota}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kota-label" class="property-label"><g:message code="personil.kota.label" default="Kota" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kota-label"><g:fieldValue bean="${personilInstance}" field="kota"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.kodePos}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="kodePos-label" class="property-label"><g:message code="personil.kodePos.label" default="Kode Pos" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="kodePos-label"><g:fieldValue bean="${personilInstance}" field="kodePos"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.noKTP}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="noKTP-label" class="property-label"><g:message code="personil.noKTP.label" default="No KTP" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="noKTP-label"><g:fieldValue bean="${personilInstance}" field="noKTP"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.hp}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="hp-label" class="property-label"><g:message code="personil.hp.label" default="Hp" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="hp-label"><g:fieldValue bean="${personilInstance}" field="hp"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.noTelp}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="noTelp-label" class="property-label"><g:message code="personil.noTelp.label" default="No Telp" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="noTelp-label"><g:fieldValue bean="${personilInstance}" field="noTelp"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.email}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="email-label" class="property-label"><g:message code="personil.email.label" default="Email" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personilInstance}" field="email"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.pendidikan}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="pendidikan-label" class="property-label"><g:message code="personil.pendidikan.label" default="Pendidikan" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="pendidikan-label"><g:fieldValue bean="${personilInstance}" field="pendidikan"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.rt}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="rt-label" class="property-label"><g:message code="personil.rt.label" default="Rt" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="rt-label"><g:fieldValue bean="${personilInstance}" field="rt"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
				<g:if test="${personilInstance?.rw}">
                    <tr>
                        <td><li class="fieldcontain"> </li></td>
                        <td>  <span id="rw-label" class="property-label"><g:message code="personil.rw.label" default="Rw" /></span></td>
                        <td>    
                            <span class="property-value" aria-labelledby="rw-label"><g:fieldValue bean="${personilInstance}" field="rw"/></span>
                            
                       </td>
                    </tr>

				</g:if>
			
                    </table>
			</ol>
			<g:form url="[resource:personilInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personilInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
