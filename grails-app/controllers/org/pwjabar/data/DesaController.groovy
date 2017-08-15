package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class DesaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Desa.list(params), model:[desaInstanceCount: Desa.count()]
    }

    def show(Desa desaInstance) {
        respond desaInstance
    }

    def create() {
        respond new Desa(params)
    }

    @Transactional
    def save(Desa desaInstance) {
        if (desaInstance == null) {
            notFound()
            return
        }

        if (desaInstance.hasErrors()) {
            respond desaInstance.errors, view:'create'
            return
        }

        desaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'desaInstance.label', default: 'Desa'), desaInstance.id])
                redirect desaInstance
            }
            '*' { respond desaInstance, [status: CREATED] }
        }
    }

    def edit(Desa desaInstance) {
        respond desaInstance
    }

    @Transactional
    def update(Desa desaInstance) {
        if (desaInstance == null) {
            notFound()
            return
        }

        if (desaInstance.hasErrors()) {
            respond desaInstance.errors, view:'edit'
            return
        }

        desaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Desa.label', default: 'Desa'), desaInstance.id])
                redirect desaInstance
            }
            '*'{ respond desaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Desa desaInstance) {

        if (desaInstance == null) {
            notFound()
            return
        }

        desaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Desa.label', default: 'Desa'), desaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'desaInstance.label', default: 'Desa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
