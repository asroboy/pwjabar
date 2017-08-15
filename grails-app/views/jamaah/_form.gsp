<%@ page import="org.pwjabar.data.Jamaah" %>



<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'nama', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="nama">
		<g:message code="jamaah.nama.label" default="Nama" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="nama" value="${jamaahInstance?.nama}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'desa', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="desa">
		<g:message code="jamaah.desa.label" default="Desa" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="desa" name="desa.id" from="${org.pwjabar.data.Desa.list()}" optionKey="id" optionValue="nama" required="" value="${jamaahInstance?.desa?.id}" class="many-to-one form-control"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'hariUsbuiyah', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="hariUsbuiyah">
		<g:message code="jamaah.hariUsbuiyah.label" default="Hari Usbuiyah" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="hariUsbuiyah" value="${jamaahInstance?.hariUsbuiyah}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'jamUsbuiyah', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="jamUsbuiyah">
		<g:message code="jamaah.jamUsbuiyah.label" default="Jam Usbuiyah" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
		<div class='input-group date' id='datetimepicker3'>
			<input type='text' name="jamUsbuiyah" class="form-control" value="${jamaahInstance?.jamUsbuiyah}"/>
			<span class="input-group-addon">
				<span class="glyphicon glyphicon-time"></span>
			</span>
		</div>

	    %{--<g:textField class="form-control" name="jamUsbuiyah" value="${jamaahInstance?.jamUsbuiyah}"/>--}%

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'kelompok', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kelompok">
		<g:message code="jamaah.kelompok.label" default="Kelompok" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="kelompok" from="${jamaahInstance.constraints.kelompok.inList}" value="${jamaahInstance?.kelompok}" valueMessagePrefix="jamaah.kelompok" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'jenisJamaah', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="jenisJamaah">
		<g:message code="jamaah.jenisJamaah.label" default="Jenis Jamaah" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="jenisJamaah" from="${jamaahInstance.constraints.jenisJamaah.inList}" value="${jamaahInstance?.jenisJamaah}" valueMessagePrefix="jamaah.jenisJamaah" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'rt', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="rt">
		<g:message code="jamaah.rt.label" default="RT" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:field class="form-control" name="rt" type="number" value="${jamaahInstance.rt}" required=""/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: jamaahInstance, field: 'rw', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="rw">
		<g:message code="jamaah.rw.label" default="RW" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:field class="form-control" name="rw" type="number" value="${jamaahInstance.rw}" required=""/>

	</div>

</div>

<script type="text/javascript">
	$(function () {
		$('#datetimepicker3').datetimepicker({
			format: 'LT'
		});
	});
</script>