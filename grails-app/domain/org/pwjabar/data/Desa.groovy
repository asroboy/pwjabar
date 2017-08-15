package org.pwjabar.data

class Desa {

    String nama
    Kecamatan kecamatan

    static constraints = {
        nama nullable: false
        kecamatan nullable: false
    }
}
