package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class PersonilController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Personil.list(params), model:[personilInstanceCount: Personil.count()]
    }

    def show(Personil personilInstance) {
        respond personilInstance
    }

    def create() {
        respond new Personil(params)
    }

    @Transactional
    def save(Personil personilInstance) {
        if (personilInstance == null) {
            notFound()
            return
        }

        if (personilInstance.hasErrors()) {
            respond personilInstance.errors, view:'create'
            return
        }

        personilInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personilInstance.label', default: 'Personil'), personilInstance.id])
                redirect personilInstance
            }
            '*' { respond personilInstance, [status: CREATED] }
        }
    }

    def edit(Personil personilInstance) {
        respond personilInstance
    }

    @Transactional
    def update(Personil personilInstance) {
        if (personilInstance == null) {
            notFound()
            return
        }

        if (personilInstance.hasErrors()) {
            respond personilInstance.errors, view:'edit'
            return
        }

        personilInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Personil.label', default: 'Personil'), personilInstance.id])
                redirect personilInstance
            }
            '*'{ respond personilInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Personil personilInstance) {

        if (personilInstance == null) {
            notFound()
            return
        }

        personilInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Personil.label', default: 'Personil'), personilInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personilInstance.label', default: 'Personil'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
