package org.pwjabar.data

import java.sql.Time

class Jamaah {

    String nama
    Desa desa
    int rt
    int rw
    String hariUsbuiyah
    String jamUsbuiyah
    String kelompok
    String jenisJamaah


    static constraints = {
        nama nullable: false
        desa nullable: false
        hariUsbuiyah nullable: false
        jamUsbuiyah nullable: false
        kelompok inList: ["bapak-bapak", "ibu-ibu", "remaja", "kanak-kanak"]
        jenisJamaah inList: ["Mandiri", "Campuran"]
    }
}
