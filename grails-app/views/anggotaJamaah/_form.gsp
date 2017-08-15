<%@ page import="org.pwjabar.data.AnggotaJamaah" %>



<div class="form-group ${hasErrors(bean: anggotaJamaahInstance, field: 'nama', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="nama">
		<g:message code="anggotaJamaah.nama.label" default="Nama" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="nama" value="${anggotaJamaahInstance?.nama}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: anggotaJamaahInstance, field: 'jenisKelamin', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="jenisKelamin">
		<g:message code="anggotaJamaah.jenisKelamin.label" default="Jenis Kelamin" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="jenisKelamin" from="${anggotaJamaahInstance.constraints.jenisKelamin.inList}" value="${anggotaJamaahInstance?.jenisKelamin}" valueMessagePrefix="anggotaJamaah.jenisKelamin" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: anggotaJamaahInstance, field: 'status', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="status">
		<g:message code="anggotaJamaah.status.label" default="Status" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="status" from="${anggotaJamaahInstance.constraints.status.inList}" value="${anggotaJamaahInstance?.status}" valueMessagePrefix="anggotaJamaah.status" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: anggotaJamaahInstance, field: 'jamaah', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="jamaah">
		<g:message code="anggotaJamaah.jamaah.label" default="Jamaah" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="jamaah"  name="jamaah.id" from="${org.pwjabar.data.Jamaah.list()}" optionKey="id" optionValue="nama" required="" value="${anggotaJamaahInstance?.jamaah?.id}" class="many-to-one form-control"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: anggotaJamaahInstance, field: 'umur', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="umur">
		<g:message code="anggotaJamaah.umur.label" default="Umur" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:field class="form-control" name="umur" type="number" value="${anggotaJamaahInstance.umur}" required=""/>

	</div>

</div>

