
<%@ page import="org.pwjabar.data.AnggotaJamaah" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'anggotaJamaah.label', default: 'AnggotaJamaah')}"/>
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
                                      title="${message(code: 'anggotaJamaah.nama.label', default: 'Nama')}"/>
                    
                    <g:sortableColumn property="jenisKelamin"
                                      title="${message(code: 'anggotaJamaah.jenisKelamin.label', default: 'Jenis Kelamin')}"/>
                    
                    <g:sortableColumn property="status"
                                      title="${message(code: 'anggotaJamaah.status.label', default: 'Status')}"/>
                    
                    <th><g:message code="anggotaJamaah.jamaah.label" default="Jamaah"/></th>
                    
                    <g:sortableColumn property="umur"
                                      title="${message(code: 'anggotaJamaah.umur.label', default: 'Umur')}"/>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${anggotaJamaahInstanceList}" status="i" var="anggotaJamaahInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                        <td><g:link action="show"
                                    id="${anggotaJamaahInstance.id}">${fieldValue(bean: anggotaJamaahInstance, field: "nama")}</g:link></td>
                        
                        <td>${fieldValue(bean: anggotaJamaahInstance, field: "jenisKelamin")}</td>
                        
                        <td>${fieldValue(bean: anggotaJamaahInstance, field: "status")}</td>
                        
                        <td>${fieldValue(bean: anggotaJamaahInstance, field: "jamaah.nama")}</td>
                        
                        <td>${fieldValue(bean: anggotaJamaahInstance, field: "umur")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${anggotaJamaahInstanceCount ?: 0}"/>
            </div>
        </div>
    </div></div>

%{--<div id="list-anggotaJamaah" class="content scaffold-list" role="main">--}%
  %{----}%
  %{----}%
   %{----}%
%{--</div>--}%
</body>
</html>
