<%@ page import="org.pwjabar.data.Kecamatan" %>



<div class="form-group ${hasErrors(bean: kecamatanInstance, field: 'nama', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="nama">
		<g:message code="kecamatan.nama.label" default="Nama" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="nama" value="${kecamatanInstance?.nama}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: kecamatanInstance, field: 'kabupatenKota', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kabupatenKota">
		<g:message code="kecamatan.kabupatenKota.label" default="Kabupaten Kota" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="kabupatenKota"  name="kabupatenKota.id" from="${org.pwjabar.data.KabupatenKota.list()}" optionValue="nama" optionKey="id" required="" value="${kecamatanInstance?.kabupatenKota?.id}" class="many-to-one form-control"/>

	</div>

</div>

