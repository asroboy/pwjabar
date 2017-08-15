<%@ page import="org.pwjabar.data.SuratMasuk" %>

<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'departemen', 'error')} ">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="departemen">
        <g:message code="suratMasuk.departemen.label" default="Departemen"/>
    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:select id="departemen" name="departemen.id" from="${org.pwjabar.data.Departemen.list()}" optionValue="nama"
                  optionKey="id"
                  value="${suratMasukInstance?.departemen?.id}" class="many-to-one form-control"
                  noSelection="['null': '']"/>

    </div>

</div>

<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'dari', 'error')} ">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="dari">
        <g:message code="suratMasuk.dari.label" default="Dari"/>

    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:textField class="form-control" name="dari" value="${suratMasukInstance?.dari}"/>
    </div>

</div>

<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'kepada', 'error')} ">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="kepada">
        <g:message code="suratMasuk.kepada.label" default="Kepada"/>

    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:textField class="form-control" name="kepada" value="${suratMasukInstance?.kepada}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'nomor_surat', 'error')} ">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="nomor_surat">
        Nomor Surat
    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:textField class="form-control" name="nomor_surat" value="${suratMasukInstance?.nomor_surat}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'perihal', 'error')} ">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="dari">
        <g:message code="suratMasuk.perihal.label" default="Perihal"/>

    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:textField class="form-control" name="perihal" value="${suratMasukInstance?.perihal}"/>
    </div>

</div>


<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'arsip', 'error')} required">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="arsip">
        <g:message code="suratMasuk.arsip.label" default="Arsip"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="col-md-9">
        <input class="form-control" type="file" id="arsip" name="arsip"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: suratMasukInstance, field: 'tgl_masuk', 'error')} required">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="tgl_masuk">
        Tanggal Masuk
        <span class="required-indicator">*</span>
    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        %{--<g:jqDatePicker  name="tgl_masuk" class="datepicker"--}%
        %{--value="${suratMasukInstance?.tgl_masuk}" />--}%
        %{--<g:datepickerUI name="tgl_masuk" required="true" value="${suratMasukInstance?.tgl_masuk}" options="{minDate:'0', maxDate:'+10Y'}" class="form-control"/>--}%
        %{--<g:jqDatePicker name="tgl_masuk" class="datepicker" value="${suratMasukInstance?.tgl_masuk}" />--}%
        <g:datePicker class="form-control" name="tgl_masuk" precision="day" value="${suratMasukInstance?.tgl_masuk}"/>
    </div>

</div>

