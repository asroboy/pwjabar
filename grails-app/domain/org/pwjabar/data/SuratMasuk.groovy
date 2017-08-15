package org.pwjabar.data

class SuratMasuk {
    Departemen departemen
    String dari
    String kepada
    String perihal
    String nomor_surat
    String namafile
    Date tgl_masuk
    byte[] arsip

    static constraints = {
        departemen(nullable: true)
        dari(nullable: false)
        kepada(nullable: false)
        perihal(nullable: false)
        nomor_surat(nullable: false)
        namafile(nullable: true)
        arsip maxSize: 1024 * 1024 * 2
    }
}
