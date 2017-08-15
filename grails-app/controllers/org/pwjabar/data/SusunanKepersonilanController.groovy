package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class SusunanKepersonilanController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SusunanKepersonilan.list(params), model:[susunanKepersonilanInstanceCount: SusunanKepersonilan.count()]
    }

    def show(SusunanKepersonilan susunanKepersonilanInstance) {
        respond susunanKepersonilanInstance
    }

    def create() {
        respond new SusunanKepersonilan(params)
    }

    @Transactional
    def save(SusunanKepersonilan susunanKepersonilanInstance) {
        if (susunanKepersonilanInstance == null) {
            notFound()
            return
        }

        if (susunanKepersonilanInstance.hasErrors()) {
            respond susunanKepersonilanInstance.errors, view:'create'
            return
        }

        susunanKepersonilanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'susunanKepersonilanInstance.label', default: 'SusunanKepersonilan'), susunanKepersonilanInstance.id])
                redirect susunanKepersonilanInstance
            }
            '*' { respond susunanKepersonilanInstance, [status: CREATED] }
        }
    }

    def edit(SusunanKepersonilan susunanKepersonilanInstance) {
        respond susunanKepersonilanInstance
    }

    @Transactional
    def update(SusunanKepersonilan susunanKepersonilanInstance) {
        if (susunanKepersonilanInstance == null) {
            notFound()
            return
        }

        if (susunanKepersonilanInstance.hasErrors()) {
            respond susunanKepersonilanInstance.errors, view:'edit'
            return
        }

        susunanKepersonilanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SusunanKepersonilan.label', default: 'SusunanKepersonilan'), susunanKepersonilanInstance.id])
                redirect susunanKepersonilanInstance
            }
            '*'{ respond susunanKepersonilanInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SusunanKepersonilan susunanKepersonilanInstance) {

        if (susunanKepersonilanInstance == null) {
            notFound()
            return
        }

        susunanKepersonilanInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SusunanKepersonilan.label', default: 'SusunanKepersonilan'), susunanKepersonilanInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'susunanKepersonilanInstance.label', default: 'SusunanKepersonilan'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
