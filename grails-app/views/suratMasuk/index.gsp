<%@ page import="org.pwjabar.data.SuratMasuk" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'suratMasuk.label', default: 'SuratMasuk')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">

    %{--<div id="list-suratMasuk" class="content scaffold-list" role="main">--}%
    %{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%

    %{--</div>--}%

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Surat Masuk</h2>

                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                <g:link class="create btn btn-default" action="create">Surat Masuk Baru</g:link>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <br/>
                <table class="table table-striped table-bordered dataTable no-footer">
                    <thead>
                    <tr>

                        <th><g:message code="suratMasuk.departemen.label" default="Departemen"/></th>

                        <g:sortableColumn property="dari"
                                          title="${message(code: 'suratMasuk.dari.label', default: 'Dari')}"/>

                        <g:sortableColumn property="kepada"
                                          title="${message(code: 'suratMasuk.kepada.label', default: 'Kepada')}"/>

                        <g:sortableColumn property="nomor_surat"
                                          title="${message(code: 'suratMasuk.nomor_surat.label', default: 'Nomor Surat')}"/>

                        <g:sortableColumn property="perihal"
                                          title="${message(code: 'suratMasuk.perihal.label', default: 'Perihal')}"/>

                        <th width="10%"><g:message code="suratMasuk.arsip.label" default="Arsip"/></th>


                        <g:sortableColumn property="tgl_masuk"
                                          title="${message(code: 'suratMasuk.tgl_masuk.label', default: 'Tanggal Masuk')}"/>

                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${suratMasukInstanceList}" status="i" var="suratMasukInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show"
                                        id="${suratMasukInstance.id}">${fieldValue(bean: suratMasukInstance?.departemen, field: "nama")}</g:link></td>

                            <td>${fieldValue(bean: suratMasukInstance, field: "dari")}</td>

                            <td>${fieldValue(bean: suratMasukInstance, field: "kepada")}</td>

                            <td>${fieldValue(bean: suratMasukInstance, field: "nomor_surat")}</td>

                            <td>${fieldValue(bean: suratMasukInstance, field: "perihal")}</td>

                            <td><a href="${createLink(controller: 'suratMasuk', action: 'download', id: suratMasukInstance.id)}">${fieldValue(bean: suratMasukInstance, field: "namafile")}</a>
                            </td>

                            <td><g:formatDate format="dd MMMM yyyy" date="${suratMasukInstance.tgl_masuk}"/></td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>

                <div class="pagination">
                    <g:paginate total="${suratMasukInstanceCount ?: 0}"/>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>
