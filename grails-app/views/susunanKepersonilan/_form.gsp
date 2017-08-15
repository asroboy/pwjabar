<%@ page import="org.pwjabar.data.SusunanKepersonilan" %>



<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'tingkat', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="tingkat">
		<g:message code="susunanKepersonilan.tingkat.label" default="Tingkat" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="tingkat" from="${susunanKepersonilanInstance.constraints.tingkat.inList}" value="${susunanKepersonilanInstance?.tingkat}" valueMessagePrefix="susunanKepersonilan.tingkat" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'provinsi', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="provinsi">
		<g:message code="susunanKepersonilan.provinsi.label" default="Provinsi" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="provinsi" from="${susunanKepersonilanInstance.constraints.provinsi.inList}" value="${susunanKepersonilanInstance?.provinsi}" valueMessagePrefix="susunanKepersonilan.provinsi" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'kabupatenKota', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kabupatenKota">
		<g:message code="susunanKepersonilan.kabupatenKota.label" default="Kabupaten Kota" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="kabupatenKota" class="form-control" name="kabupatenKota.id" from="${org.pwjabar.data.KabupatenKota.list()}" optionValue="nama" optionKey="id" value="${susunanKepersonilanInstance?.kabupatenKota?.id}" class="many-to-one" noSelection="['null': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'kecamatan', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kecamatan">
		<g:message code="susunanKepersonilan.kecamatan.label" default="Kecamatan" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="kecamatan" class="form-control" name="kecamatan.id" from="${org.pwjabar.data.Kecamatan.list()}" optionValue="nama" optionKey="id" value="${susunanKepersonilanInstance?.kecamatan?.id}" class="many-to-one" noSelection="['null': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'desa', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="desa">
		<g:message code="susunanKepersonilan.desa.label" default="Desa" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select id="desa" class="form-control" name="desa.id" from="${org.pwjabar.data.Desa.list()}" optionValue="nama" optionKey="id" value="${susunanKepersonilanInstance?.desa?.id}" class="many-to-one" noSelection="['null': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'khidmahMulai', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="khidmahMulai">
		<g:message code="susunanKepersonilan.khidmahMulai.label" default="Khidmah Mulai" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="khidmahMulai" value="${susunanKepersonilanInstance?.khidmahMulai}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'khidmahSampai', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="khidmahSampai">
		<g:message code="susunanKepersonilan.khidmahSampai.label" default="Khidmah Sampai" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="khidmahSampai" value="${susunanKepersonilanInstance?.khidmahSampai}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanInstance, field: 'resuffleKe', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="resuffleKe">
		<g:message code="susunanKepersonilan.resuffleKe.label" default="Resuffle Ke" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:field class="form-control" name="resuffleKe" type="number" value="${susunanKepersonilanInstance.resuffleKe}" required=""/>

	</div>

</div>

