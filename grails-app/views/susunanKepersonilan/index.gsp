
<%@ page import="org.pwjabar.data.SusunanKepersonilan" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'susunanKepersonilan.label', default: 'SusunanKepersonilan')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>


<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="clearfix"></div>
        </div>

        <div class="x_content">
            <h2><g:message code="default.list.label" args="[entityName]"/></h2>

            <g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
            <table class="table table-striped table-bordered dataTable no-footer">
                <thead>
                <tr>
                    
                    <g:sortableColumn property="tingkat"
                                      title="${message(code: 'susunanKepersonilan.tingkat.label', default: 'Tingkat')}"/>
                    
                    <g:sortableColumn property="provinsi"
                                      title="${message(code: 'susunanKepersonilan.provinsi.label', default: 'Provinsi')}"/>
                    
                    <th><g:message code="susunanKepersonilan.kabupatenKota.label" default="Kabupaten Kota"/></th>
                    
                    <th><g:message code="susunanKepersonilan.kecamatan.label" default="Kecamatan"/></th>
                    
                    <th><g:message code="susunanKepersonilan.desa.label" default="Desa"/></th>
                    
                    <g:sortableColumn property="khidmahMulai"
                                      title="${message(code: 'susunanKepersonilan.khidmahMulai.label', default: 'Khidmah Mulai')}"/>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${susunanKepersonilanInstanceList}" status="i" var="susunanKepersonilanInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                        <td><g:link action="show"
                                    id="${susunanKepersonilanInstance.id}">${fieldValue(bean: susunanKepersonilanInstance, field: "tingkat")}</g:link></td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanInstance, field: "provinsi")}</td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanInstance?.kabupatenKota, field: "nama")}</td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanInstance?.kecamatan, field: "nama")}</td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanInstance?.desa, field: "nama")}</td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanInstance, field: "khidmahMulai")}</td>

                        <td><a href="${createLink(controller: 'susunanKepersonilanDetil', action: 'index', params: [susunan_id: susunanKepersonilanInstance.id])}">Detil</a> </td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${susunanKepersonilanInstanceCount ?: 0}"/>
            </div>
        </div>
    </div></div>

%{--<div id="list-susunanKepersonilan" class="content scaffold-list" role="main">--}%
  %{----}%
  %{----}%
   %{----}%
%{--</div>--}%
</body>
</html>
