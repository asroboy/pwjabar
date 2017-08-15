package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class JamaahController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Jamaah.list(params), model:[jamaahInstanceCount: Jamaah.count()]
    }

    def show(Jamaah jamaahInstance) {
        respond jamaahInstance
    }

    def create() {
        respond new Jamaah(params)
    }

    @Transactional
    def save(Jamaah jamaahInstance) {
        if (jamaahInstance == null) {
            notFound()
            return
        }

        if (jamaahInstance.hasErrors()) {
            respond jamaahInstance.errors, view:'create'
            return
        }

        jamaahInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jamaahInstance.label', default: 'Jamaah'), jamaahInstance.id])
                redirect jamaahInstance
            }
            '*' { respond jamaahInstance, [status: CREATED] }
        }
    }

    def edit(Jamaah jamaahInstance) {
        respond jamaahInstance
    }

    @Transactional
    def update(Jamaah jamaahInstance) {
        if (jamaahInstance == null) {
            notFound()
            return
        }

        if (jamaahInstance.hasErrors()) {
            respond jamaahInstance.errors, view:'edit'
            return
        }

        jamaahInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Jamaah.label', default: 'Jamaah'), jamaahInstance.id])
                redirect jamaahInstance
            }
            '*'{ respond jamaahInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Jamaah jamaahInstance) {

        if (jamaahInstance == null) {
            notFound()
            return
        }

        jamaahInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Jamaah.label', default: 'Jamaah'), jamaahInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jamaahInstance.label', default: 'Jamaah'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
