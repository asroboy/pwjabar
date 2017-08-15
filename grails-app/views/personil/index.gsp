
<%@ page import="org.pwjabar.data.Personil" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'personil.label', default: 'Personil')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>


<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2><g:message code="default.list.label" args="[entityName]"/></h2>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="clearfix"></div>
        </div>

        <div class="x_content">
            <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
            <table class="table table-striped table-bordered dataTable no-footer">
                <thead>
                <tr>
                    
                    <g:sortableColumn property="nama"
                                      title="${message(code: 'personil.nama.label', default: 'Nama')}"/>
                    
                    <g:sortableColumn property="alamat"
                                      title="${message(code: 'personil.alamat.label', default: 'Alamat')}"/>
                    
                    <g:sortableColumn property="desa"
                                      title="${message(code: 'personil.desa.label', default: 'Desa')}"/>
                    
                    <g:sortableColumn property="kecamatan"
                                      title="${message(code: 'personil.kecamatan.label', default: 'Kecamatan')}"/>
                    
                    <g:sortableColumn property="kota"
                                      title="${message(code: 'personil.kota.label', default: 'Kota')}"/>
                    
                    <g:sortableColumn property="kodePos"
                                      title="${message(code: 'personil.kodePos.label', default: 'Kode Pos')}"/>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${personilInstanceList}" status="i" var="personilInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                        <td><g:link action="show"
                                    id="${personilInstance.id}">${fieldValue(bean: personilInstance, field: "nama")}</g:link></td>
                        
                        <td>${fieldValue(bean: personilInstance, field: "alamat")}</td>
                        
                        <td>${fieldValue(bean: personilInstance, field: "desa")}</td>
                        
                        <td>${fieldValue(bean: personilInstance, field: "kecamatan")}</td>
                        
                        <td>${fieldValue(bean: personilInstance, field: "kota")}</td>
                        
                        <td>${fieldValue(bean: personilInstance, field: "kodePos")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${personilInstanceCount ?: 0}"/>
            </div>
        </div>
    </div></div>

%{--<div id="list-personil" class="content scaffold-list" role="main">--}%
  %{----}%
  %{----}%
   %{----}%
%{--</div>--}%
</body>
</html>
