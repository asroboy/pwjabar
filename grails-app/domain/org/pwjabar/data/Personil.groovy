package org.pwjabar.data

class Personil {
    String nama
    String alamat
    int rt
    int rw
    String desa
    String kecamatan
    String kota
    String kodePos
    String noTelp
    String hp
    String noKTP
    String email

    String pendidikan

    static constraints = {
        nama nullable: false
        alamat nullable: true
        desa nullable: true
        kecamatan nullable: true
        kota nullable: true
        kodePos nullable: true

        noKTP nullable: true, unique: true
        hp nullable: true
        noTelp nullable: true
        email nullable: true

        pendidikan nullable: true, inList: ["", "SD", "SLTP", "SLTA", "D1", "D2", "D3", "S1", "S2", "S3",]
    }
}
