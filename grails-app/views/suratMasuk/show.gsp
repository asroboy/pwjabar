<%@ page import="org.pwjabar.data.SuratMasuk" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'suratMasuk.label', default: 'SuratMasuk')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<g:link class="btn btn-default" action="index">Daftar Surat Masuk</g:link>
<g:link class="btn btn-default" action="create">Surat Masuk Baru</g:link>


<div id="show-suratMasuk" class="content scaffold-show" role="main">
    <h1>Detail Surat Masuk</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <ol class="property-list suratMasuk">
        <table class="table">

            <g:if test="${suratMasukInstance?.departemen}">
                <tr><td><li class="fieldcontain"></li></td>
                <td><span id="departemen-label" class="property-label"><g:message code="suratMasuk.departemen.label"
                                                                                  default="Departemen"/></span></td>

                <td><span class="property-value"
                          aria-labelledby="departemen-label">${suratMasukInstance?.departemen?.nama?.encodeAsHTML()}</span>

                </td>
                </tr>
            </g:if>

            <g:if test="${suratMasukInstance?.dari}">
                <tr><td>
                    <li class="fieldcontain"></li></td>
                    <td>

                        <span id="dari-label" class="property-label"><g:message code="suratMasuk.dari.label"
                                                                                default="Dari"/></span>
                    </td><td>
                    <span class="property-value" aria-labelledby="dari-label"><g:fieldValue bean="${suratMasukInstance}"
                                                                                            field="dari"/></span>
                </td>
                </tr>
            </g:if>

            <g:if test="${suratMasukInstance?.kepada}">
                <tr><td><li class="fieldcontain"></li></td>
                    <td><span id="kepada-label" class="property-label"><g:message code="suratMasuk.kepada.label"
                                                                                  default="Kepada"/></span>
                    </td><td>
                    <span class="property-value" aria-labelledby="kepada-label"><g:fieldValue
                            bean="${suratMasukInstance}"
                            field="kepada"/></span>
                </td></tr>
            </g:if>

            <g:if test="${suratMasukInstance?.nomor_surat}">
                <tr><td><li class="fieldcontain"></li></td>
                    <td><span id="nomor_surat-label" class="property-label">Nomor Surat</span>
                    </td><td>
                    <span class="property-value" aria-labelledby="nomor_surat-label"><g:fieldValue
                            bean="${suratMasukInstance}" field="nomor_surat"/></span>

                </td></tr>
            </g:if>

            <g:if test="${suratMasukInstance?.perihal}">
                <tr><td><li class="fieldcontain"></li></td>
                    <td><span id="perihal-label" class="property-label">Perihal</span>
                    </td><td>
                    <span class="property-value" aria-labelledby="perihal-label"><g:fieldValue
                            bean="${suratMasukInstance}" field="perihal"/></span>

                </td></tr>
            </g:if>

            <g:if test="${suratMasukInstance?.arsip}">
                <tr><td><li class="fieldcontain"></li></td>
                    <td><span id="arsip-label" class="property-label"><g:message code="suratMasuk.arsip.label"
                                                                                 default="Arsip"/></span>
                    </td><td>
                    <span class="property-value" aria-labelledby="nomor_surat-label"><g:fieldValue
                            bean="${suratMasukInstance}" field="namafile"/></span>

                </td></tr>
            </g:if>

            <g:if test="${suratMasukInstance?.tgl_masuk}">
                <tr><td><li class="fieldcontain"></li></td>
                    <td><span id="tgl_masuk-label" class="property-label">Tanggal Masuk</span>
                    </td><td>
                    <span class="property-value" aria-labelledby="tgl_masuk-label"><g:formatDate
                            date="${suratMasukInstance?.tgl_masuk}"/></span>

                </td></tr>
            </g:if>

        </table>

    </ol>
    <g:form url="[resource: suratMasukInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit btn btn-default" action="edit" resource="${suratMasukInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete btn btn-danger" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
