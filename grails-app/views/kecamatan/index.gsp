
<%@ page import="org.pwjabar.data.Kecamatan" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'kecamatan.label', default: 'Kecamatan')}"/>
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
                                      title="${message(code: 'kecamatan.nama.label', default: 'Nama')}"/>
                    
                    <th><g:message code="kecamatan.kabupatenKota.label" default="Kabupaten Kota"/></th>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${kecamatanInstanceList}" status="i" var="kecamatanInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                        <td><g:link action="show"
                                    id="${kecamatanInstance.id}">${fieldValue(bean: kecamatanInstance, field: "nama")}</g:link></td>
                        
                        <td>${fieldValue(bean: kecamatanInstance?.kabupatenKota, field: "nama")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${kecamatanInstanceCount ?: 0}"/>
            </div>
        </div>
    </div></div>

%{--<div id="list-kecamatan" class="content scaffold-list" role="main">--}%
  %{----}%
  %{----}%
   %{----}%
%{--</div>--}%
</body>
</html>
