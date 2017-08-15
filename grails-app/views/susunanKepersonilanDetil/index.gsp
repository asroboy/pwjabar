
<%@ page import="org.pwjabar.data.SusunanKepersonilanDetil" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'susunanKepersonilanDetil.label', default: 'SusunanKepersonilanDetil')}"/>
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
            <h3>Susunan Personil YPW ${susunanKepersonilan?.tingkat} ${susunanKepersonilan?.desa?.nama?:""} ${susunanKepersonilan?.kecamatan?.nama?:""} ${susunanKepersonilan?.kabupatenKota?.nama?:""} ${susunanKepersonilan?.provinsi}</h3>
            <h2>Masa Khidmah ${susunanKepersonilan?.khidmahMulai} - ${susunanKepersonilan?.khidmahSampai}</h2>

            <g:link class="btn btn-default" action="create" params="[susunan_id: susunanKepersonilan.id]">Tambah</g:link>
            <table class="table table-striped table-bordered dataTable no-footer">
                <thead>
                <tr>
                    
                    <th><g:message code="susunanKepersonilanDetil.personil.label" default="Personil"/></th>
                    
                    <g:sortableColumn property="jabatan"
                                      title="${message(code: 'susunanKepersonilanDetil.jabatan.label', default: 'Jabatan')}"/>
                    
                    <th><g:message code="susunanKepersonilanDetil.departemen.label" default="Departemen"/></th>
                    
                    <th><g:message code="susunanKepersonilanDetil.susunanKepersonilan.label" default="Susunan Kepersonilan"/></th>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${susunanKepersonilanDetilInstanceList}" status="i" var="susunanKepersonilanDetilInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                        <td><g:link action="show"
                                    id="${susunanKepersonilanDetilInstance.id}">${fieldValue(bean: susunanKepersonilanDetilInstance.personil, field: "nama")}</g:link></td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanDetilInstance, field: "jabatan")}</td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanDetilInstance.departemen, field: "nama")}</td>
                        
                        <td>${fieldValue(bean: susunanKepersonilanDetilInstance.susunanKepersonilan, field: "tingkat")}</td>


                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${susunanKepersonilanDetilInstanceCount ?: 0}"/>
            </div>
        </div>
    </div></div>

%{--<div id="list-susunanKepersonilanDetil" class="content scaffold-list" role="main">--}%
  %{----}%
  %{----}%
   %{----}%
%{--</div>--}%
</body>
</html>
