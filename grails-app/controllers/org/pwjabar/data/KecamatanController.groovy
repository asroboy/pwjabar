package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class KecamatanController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Kecamatan.list(params), model:[kecamatanInstanceCount: Kecamatan.count()]
    }

    def show(Kecamatan kecamatanInstance) {
        respond kecamatanInstance
    }

    def create() {
        respond new Kecamatan(params)
    }

    @Transactional
    def save(Kecamatan kecamatanInstance) {
        if (kecamatanInstance == null) {
            notFound()
            return
        }

        if (kecamatanInstance.hasErrors()) {
            respond kecamatanInstance.errors, view:'create'
            return
        }

        kecamatanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'kecamatanInstance.label', default: 'Kecamatan'), kecamatanInstance.id])
                redirect kecamatanInstance
            }
            '*' { respond kecamatanInstance, [status: CREATED] }
        }
    }

    def edit(Kecamatan kecamatanInstance) {
        respond kecamatanInstance
    }

    @Transactional
    def update(Kecamatan kecamatanInstance) {
        if (kecamatanInstance == null) {
            notFound()
            return
        }

        if (kecamatanInstance.hasErrors()) {
            respond kecamatanInstance.errors, view:'edit'
            return
        }

        kecamatanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Kecamatan.label', default: 'Kecamatan'), kecamatanInstance.id])
                redirect kecamatanInstance
            }
            '*'{ respond kecamatanInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Kecamatan kecamatanInstance) {

        if (kecamatanInstance == null) {
            notFound()
            return
        }

        kecamatanInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Kecamatan.label', default: 'Kecamatan'), kecamatanInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'kecamatanInstance.label', default: 'Kecamatan'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
