<%@ page import="org.pwjabar.data.KabupatenKota" %>



<div class="form-group ${hasErrors(bean: kabupatenKotaInstance, field: 'nama', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="nama">
		<g:message code="kabupatenKota.nama.label" default="Nama" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="nama" value="${kabupatenKotaInstance?.nama}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: kabupatenKotaInstance, field: 'provinsi', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="provinsi">
		<g:message code="kabupatenKota.provinsi.label" default="Provinsi" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="provinsi" from="${kabupatenKotaInstance.constraints.provinsi.inList}" value="${kabupatenKotaInstance?.provinsi}" valueMessagePrefix="kabupatenKota.provinsi" noSelection="['': '']"/>

	</div>

</div>

