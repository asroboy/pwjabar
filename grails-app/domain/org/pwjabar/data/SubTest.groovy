package org.pwjabar.data

class SubTest {

    String name
    String deskripsi
    static constraints = {
        name nullable: true
        deskripsi size: 0..5000
    }
}
