<%@ page import="org.pwjabar.data.SusunanKepersonilanDetil" %>



<div class="form-group ${hasErrors(bean: susunanKepersonilanDetilInstance, field: 'personil', 'error')} required">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="personil">
        <g:message code="susunanKepersonilanDetil.personil.label" default="Personil"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:select id="personil" class="form-control" name="personil.id" from="${org.pwjabar.data.Personil.list()}"
                  optionValue="${{ it.nama + ', ' + it.kota }}" optionKey="id" required=""
                  value="${susunanKepersonilanDetilInstance?.personil?.id}" class="many-to-one"/>

    </div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanDetilInstance, field: 'jabatan', 'error')} ">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="jabatan">
        <g:message code="susunanKepersonilanDetil.jabatan.label" default="Jabatan"/>

    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:select class="form-control" name="jabatan"
                  from="${susunanKepersonilanDetilInstance.constraints.jabatan.inList}"
                  value="${susunanKepersonilanDetilInstance?.jabatan}"
                  valueMessagePrefix="susunanKepersonilanDetil.jabatan" noSelection="['': '']"/>

    </div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanDetilInstance, field: 'departemen', 'error')} required">
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="departemen">
        <g:message code="susunanKepersonilanDetil.departemen.label" default="Departemen"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        <g:select id="departemen" class="form-control" name="departemen.id" from="${org.pwjabar.data.Departemen.list()}"
                  optionValue="nama" optionKey="id" required=""
                  value="${susunanKepersonilanDetilInstance?.departemen?.id}" class="many-to-one"/>

    </div>

</div>

<div class="form-group ${hasErrors(bean: susunanKepersonilanDetilInstance, field: 'susunanKepersonilan', 'error')} required" hidden>
    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="susunanKepersonilan">
        <g:message code="susunanKepersonilanDetil.susunanKepersonilan.label" default="Susunan Kepersonilan"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="col-md-9 col-sm-9 col-xs-9">
        %{--<g:select id="susunanKepersonilan" class="form-control" name="susunanKepersonilan.id" from="${org.pwjabar.data.SusunanKepersonilan.list()}" optionValue="${{it.tingkat+', '+it.provinsi+', '+(it?.kabupatenKota?.nama?:'')+', '+(it?.kecamatan?.nama?:'')}}" optionKey="id" required="" value="${susunanKepersonilanDetilInstance?.susunanKepersonilan?.id}" class="many-to-one"/>--}%
        <g:textField name="susunanKepersonilan.id" id="susunanKepersonilan" value="${susunanKepersonilan.id}" />
    </div>

</div>



