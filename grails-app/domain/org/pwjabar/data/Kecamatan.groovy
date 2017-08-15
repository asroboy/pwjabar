package org.pwjabar.data

class Kecamatan {
    String nama
    KabupatenKota kabupatenKota

    static constraints = {
        nama nullable: false
        kabupatenKota nullable: false
    }
}
