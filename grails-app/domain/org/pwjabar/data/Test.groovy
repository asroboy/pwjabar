package org.pwjabar.data

class Test {

    String name

    static hasMany = [books: SubTest]
    static constraints = {
        name nullable: true
    }
}
