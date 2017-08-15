package org.pwjabar.data

class AnggotaJamaah {
    String nama
    int umur
    String jenisKelamin
    String status
    Jamaah jamaah


    static constraints = {
        nama nullable: false
        jenisKelamin inList: ["pria", "wanita"]
        status inList: ["aktif", "tidak aktif", "pasif"]
        jamaah nullable: false
    }
}
