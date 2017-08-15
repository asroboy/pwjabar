package org.pwjabar.data

class SusunanKepersonilanDetil {

    Personil personil
    String jabatan
    Departemen departemen
    SusunanKepersonilan susunanKepersonilan

    static constraints = {
        personil nullable: false
        jabatan nullable: false, inList: ["Ketua", "Wakil Ketua", "Sekretaris", "Wakil Sekretaris", "Bendahara", "Wakil Bendara"]
        departemen nullable: false
        susunanKepersonilan nullable: false
    }
}
