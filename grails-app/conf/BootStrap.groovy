import org.pwjabar.data.Departemen
import org.pwjabar.data.KabupatenKota
import org.pwjabar.data.Kecamatan
import org.pwjabar.security.User
import org.pwjabar.security.Role
import org.pwjabar.security.UserRole
import grails.plugin.springsecurity.SecurityConfigType

class BootStrap {
    def springSecurityService

    def init = { servletContext ->
        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }

//        Departemen.findByNama("PW")?:new Departemen(nama: "PW").save(flush: true);
        Departemen.findByNama("DPPW")?:new Departemen(nama: "DPPW").save(flush: true);
        Departemen.findByNama("DPWW")?:new Departemen(nama: "DPWW").save(flush: true);
        Departemen.findByNama("DPRW")?:new Departemen(nama: "DPRW").save(flush: true);
        Departemen.findByNama("DPKW")?:new Departemen(nama: "DPKW").save(flush: true);
        Departemen.findByNama("DEPKOP")?:new Departemen(nama: "DEPKOP").save(flush: true);
        Departemen.findByNama("DEPDIKBUD")?:new Departemen(nama: "DEPDIKBUD").save(flush: true);
        Departemen.findByNama("DKW")?:new Departemen(nama: "DKW").save(flush: true);

        KabupatenKota.findByNama("Bandung")?: new KabupatenKota(nama: "Bandung", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Bekasi")?: new KabupatenKota(nama: "Bekasi", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota bogor = KabupatenKota.findByNama("Bogor")?: new KabupatenKota(nama: "Bogor", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Depok")?: new KabupatenKota(nama: "Depok", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Cianjur")?: new KabupatenKota(nama: "Cianjur", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Ciamis")?: new KabupatenKota(nama: "Ciamis", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Cirebon")?: new KabupatenKota(nama: "Cirebon", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Garut")?: new KabupatenKota(nama: "Garut", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Indramayu")?: new KabupatenKota(nama: "Indramayu", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Karawang")?: new KabupatenKota(nama: "Karawang", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Kuningan")?: new KabupatenKota(nama: "Kuningan", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Majalengka")?: new KabupatenKota(nama: "Majalengka", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Purwakarta")?: new KabupatenKota(nama: "Purwakarta", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Subang")?: new KabupatenKota(nama: "Subang", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Sukabumi")?: new KabupatenKota(nama: "Sukabumi", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Sumedang")?: new KabupatenKota(nama: "Sumedang", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)
        KabupatenKota.findByNama("Tasikmalaya")?: new KabupatenKota(nama: "Tasikmalaya", provinsi: KabupatenKota.JAWA_BARAT).save(flush: true)

        Kecamatan.findByNama("Sukaraja")?:new Kecamatan(nama: "Sukaraja", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Bogor Timur")?:new Kecamatan(nama: "Bogor Timur", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Bogor Utara")?:new Kecamatan(nama: "Bogor Utara", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Bogor Selatan")?:new Kecamatan(nama: "Bogor Selatan", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Ciawi")?:new Kecamatan(nama: "Ciawi", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Cibinong")?:new Kecamatan(nama: "Cibinong", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Cibungbulang")?:new Kecamatan(nama: "Cibungbulang", kabupatenKota: bogor).save(flush: true)
        Kecamatan.findByNama("Citeureup")?:new Kecamatan(nama: "Citeureup", kabupatenKota: bogor).save(flush: true)
    }
    def destroy = {
    }
}
