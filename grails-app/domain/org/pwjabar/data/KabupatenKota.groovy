package org.pwjabar.data

class KabupatenKota {

    public static String JAWA_BARAT = "Jawa Barat";
    public static String JAWA_TENGAH = "Jawa Tengah";
    public static String JAWA_TIMUR = "Jawa Timur";
    public static String DKI = "DKI Jakarta";


    String nama
    String provinsi

    static constraints = {
        nama nullable: true
        provinsi nullable: true, inList: [JAWA_BARAT, JAWA_TENGAH, JAWA_TIMUR, DKI]
    }
}
