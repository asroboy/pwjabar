package org.pwjabar.data

class SusunanKepersonilan {



    String tingkat
    String provinsi
    KabupatenKota kabupatenKota
    Kecamatan kecamatan
    Desa desa
    String khidmahMulai
    String khidmahSampai
    int resuffleKe


    static constraints = {
        tingkat nullable: false, inList: ["Provinsi","Kabupaten/Kota", "Kecamatan","Desa"]
        provinsi nullable: true, inList: ["Jawa Barat"]
        kabupatenKota nullable: true
        kecamatan nullable: true
        desa nullable: true
        khidmahMulai nullable: false
        khidmahSampai nullable: false
    }
}
