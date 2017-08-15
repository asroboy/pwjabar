
<%@ page import="org.pwjabar.data.Jamaah" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'jamaah.label', default: 'Jamaah')}"/>
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
                                      title="${message(code: 'jamaah.nama.label', default: 'Nama')}"/>
                    
                    <th><g:message code="jamaah.desa.label" default="Desa"/></th>
                    
                    <g:sortableColumn property="hariUsbuiyah"
                                      title="${message(code: 'jamaah.hariUsbuiyah.label', default: 'Hari Usbuiyah')}"/>
                    
                    <g:sortableColumn property="jamUsbuiyah"
                                      title="${message(code: 'jamaah.jamUsbuiyah.label', default: 'Jam Usbuiyah')}"/>
                    
                    <g:sortableColumn property="kelompok"
                                      title="${message(code: 'jamaah.kelompok.label', default: 'Kelompok')}"/>
                    
                    <g:sortableColumn property="jenisJamaah"
                                      title="${message(code: 'jamaah.jenisJamaah.label', default: 'Jenis Jamaah')}"/>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${jamaahInstanceList}" status="i" var="jamaahInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                        <td><g:link action="show"
                                    id="${jamaahInstance.id}">${fieldValue(bean: jamaahInstance, field: "nama")}</g:link></td>
                        
                        <td>${fieldValue(bean: jamaahInstance, field: "desa.nama")}</td>
                        
                        <td>${fieldValue(bean: jamaahInstance, field: "hariUsbuiyah")}</td>
                        
                        <td>${fieldValue(bean: jamaahInstance, field: "jamUsbuiyah")}</td>
                        
                        <td>${fieldValue(bean: jamaahInstance, field: "kelompok")}</td>
                        
                        <td>${fieldValue(bean: jamaahInstance, field: "jenisJamaah")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${jamaahInstanceCount ?: 0}"/>
            </div>
        </div>
    </div></div>

%{--<div id="list-jamaah" class="content scaffold-list" role="main">--}%
  %{----}%
  %{----}%
   %{----}%
%{--</div>--}%
</body>
</html>
