<%@ page import="org.pwjabar.data.Desa" %>



<div class="form-group ${hasErrors(bean: desaInstance, field: 'nama', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="nama">
		<g:message code="desa.nama.label" default="Nama" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="nama" value="${desaInstance?.nama}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: desaInstance, field: 'kecamatan', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kecamatan">
		<g:message code="desa.kecamatan.label" default="Kecamatan" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="kecamatan" name="kecamatan.id" from="${org.pwjabar.data.Kecamatan.list()}" optionValue="nama" optionKey="id" required="" value="${desaInstance?.kecamatan?.id}" class="many-to-one form-control"/>

	</div>

</div>

