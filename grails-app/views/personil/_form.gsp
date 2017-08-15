<%@ page import="org.pwjabar.data.Personil" %>



<div class="form-group ${hasErrors(bean: personilInstance, field: 'nama', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="nama">
		<g:message code="personil.nama.label" default="Nama" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="nama" value="${personilInstance?.nama}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'alamat', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="alamat">
		<g:message code="personil.alamat.label" default="Alamat" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="alamat" value="${personilInstance?.alamat}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'desa', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="desa">
		<g:message code="personil.desa.label" default="Desa" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="desa" value="${personilInstance?.desa}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'kecamatan', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kecamatan">
		<g:message code="personil.kecamatan.label" default="Kecamatan" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="kecamatan" value="${personilInstance?.kecamatan}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'kota', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kota">
		<g:message code="personil.kota.label" default="Kota" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="kota" value="${personilInstance?.kota}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'kodePos', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="kodePos">
		<g:message code="personil.kodePos.label" default="Kode Pos" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="kodePos" value="${personilInstance?.kodePos}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'noKTP', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="noKTP">
		<g:message code="personil.noKTP.label" default="No KTP" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="noKTP" value="${personilInstance?.noKTP}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'hp', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="hp">
		<g:message code="personil.hp.label" default="Hp" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="hp" value="${personilInstance?.hp}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'noTelp', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="noTelp">
		<g:message code="personil.noTelp.label" default="No Telp" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="noTelp" value="${personilInstance?.noTelp}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'email', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="email">
		<g:message code="personil.email.label" default="Email" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:textField class="form-control" name="email" value="${personilInstance?.email}"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'pendidikan', 'error')} ">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="pendidikan">
		<g:message code="personil.pendidikan.label" default="Pendidikan" />
		
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:select class="form-control" name="pendidikan" from="${personilInstance.constraints.pendidikan.inList}" value="${personilInstance?.pendidikan}" valueMessagePrefix="personil.pendidikan" noSelection="['': '']"/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'rt', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="rt">
		<g:message code="personil.rt.label" default="Rt" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:field class="form-control" name="rt" type="number" value="${personilInstance.rt}" required=""/>

	</div>

</div>

<div class="form-group ${hasErrors(bean: personilInstance, field: 'rw', 'error')} required">
	<label class="control-label col-md-3 col-sm-3 col-xs-3" for="rw">
		<g:message code="personil.rw.label" default="Rw" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
	    <g:field class="form-control" name="rw" type="number" value="${personilInstance.rw}" required=""/>

	</div>

</div>

