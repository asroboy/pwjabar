package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class AnggotaJamaahController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AnggotaJamaah.list(params), model:[anggotaJamaahInstanceCount: AnggotaJamaah.count()]
    }

    def show(AnggotaJamaah anggotaJamaahInstance) {
        respond anggotaJamaahInstance
    }

    def create() {
        respond new AnggotaJamaah(params)
    }

    @Transactional
    def save(AnggotaJamaah anggotaJamaahInstance) {
        if (anggotaJamaahInstance == null) {
            notFound()
            return
        }

        if (anggotaJamaahInstance.hasErrors()) {
            respond anggotaJamaahInstance.errors, view:'create'
            return
        }

        anggotaJamaahInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'anggotaJamaahInstance.label', default: 'AnggotaJamaah'), anggotaJamaahInstance.id])
                redirect anggotaJamaahInstance
            }
            '*' { respond anggotaJamaahInstance, [status: CREATED] }
        }
    }

    def edit(AnggotaJamaah anggotaJamaahInstance) {
        respond anggotaJamaahInstance
    }

    @Transactional
    def update(AnggotaJamaah anggotaJamaahInstance) {
        if (anggotaJamaahInstance == null) {
            notFound()
            return
        }

        if (anggotaJamaahInstance.hasErrors()) {
            respond anggotaJamaahInstance.errors, view:'edit'
            return
        }

        anggotaJamaahInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AnggotaJamaah.label', default: 'AnggotaJamaah'), anggotaJamaahInstance.id])
                redirect anggotaJamaahInstance
            }
            '*'{ respond anggotaJamaahInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AnggotaJamaah anggotaJamaahInstance) {

        if (anggotaJamaahInstance == null) {
            notFound()
            return
        }

        anggotaJamaahInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AnggotaJamaah.label', default: 'AnggotaJamaah'), anggotaJamaahInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'anggotaJamaahInstance.label', default: 'AnggotaJamaah'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
