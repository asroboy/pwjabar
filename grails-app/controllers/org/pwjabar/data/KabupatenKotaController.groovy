package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class KabupatenKotaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond KabupatenKota.list(params), model:[kabupatenKotaInstanceCount: KabupatenKota.count()]
    }

    def show(KabupatenKota kabupatenKotaInstance) {
        respond kabupatenKotaInstance
    }

    def create() {
        respond new KabupatenKota(params)
    }

    @Transactional
    def save(KabupatenKota kabupatenKotaInstance) {
        if (kabupatenKotaInstance == null) {
            notFound()
            return
        }

        if (kabupatenKotaInstance.hasErrors()) {
            respond kabupatenKotaInstance.errors, view:'create'
            return
        }

        kabupatenKotaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'kabupatenKotaInstance.label', default: 'KabupatenKota'), kabupatenKotaInstance.id])
                redirect kabupatenKotaInstance
            }
            '*' { respond kabupatenKotaInstance, [status: CREATED] }
        }
    }

    def edit(KabupatenKota kabupatenKotaInstance) {
        respond kabupatenKotaInstance
    }

    @Transactional
    def update(KabupatenKota kabupatenKotaInstance) {
        if (kabupatenKotaInstance == null) {
            notFound()
            return
        }

        if (kabupatenKotaInstance.hasErrors()) {
            respond kabupatenKotaInstance.errors, view:'edit'
            return
        }

        kabupatenKotaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'KabupatenKota.label', default: 'KabupatenKota'), kabupatenKotaInstance.id])
                redirect kabupatenKotaInstance
            }
            '*'{ respond kabupatenKotaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(KabupatenKota kabupatenKotaInstance) {

        if (kabupatenKotaInstance == null) {
            notFound()
            return
        }

        kabupatenKotaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'KabupatenKota.label', default: 'KabupatenKota'), kabupatenKotaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'kabupatenKotaInstance.label', default: 'KabupatenKota'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
