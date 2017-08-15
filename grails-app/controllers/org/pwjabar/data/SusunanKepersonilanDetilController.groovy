package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class SusunanKepersonilanDetilController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def susunanKepersonilan = SusunanKepersonilan.findById(Long.parseLong(params.susunan_id))
        params.max = Math.min(max ?: 10, 100)
        def susunanKepersonilanDetils = SusunanKepersonilanDetil.findAllBySusunanKepersonilan(susunanKepersonilan, params).asList();
        respond susunanKepersonilanDetils, model:[susunanKepersonilan: susunanKepersonilan, susunanKepersonilanDetilInstanceCount: susunanKepersonilanDetils.size()]
    }

    def show(SusunanKepersonilanDetil susunanKepersonilanDetilInstance) {
        respond susunanKepersonilanDetilInstance
    }

    def create() {
        def susunanKepersonilan = SusunanKepersonilan.findById(Long.parseLong(params.susunan_id))
        respond new SusunanKepersonilanDetil(params), model: [susunanKepersonilan: susunanKepersonilan]
    }

    @Transactional
    def save(SusunanKepersonilanDetil susunanKepersonilanDetilInstance) {
        if (susunanKepersonilanDetilInstance == null) {
            notFound()
            return
        }

        if (susunanKepersonilanDetilInstance.hasErrors()) {
            respond susunanKepersonilanDetilInstance.errors, view:'create'
            return
        }

        susunanKepersonilanDetilInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'susunanKepersonilanDetilInstance.label', default: 'SusunanKepersonilanDetil'), susunanKepersonilanDetilInstance.id])
                redirect susunanKepersonilanDetilInstance
            }
            '*' { respond susunanKepersonilanDetilInstance, [status: CREATED] }
        }
    }

    def edit(SusunanKepersonilanDetil susunanKepersonilanDetilInstance) {
        respond susunanKepersonilanDetilInstance
    }

    @Transactional
    def update(SusunanKepersonilanDetil susunanKepersonilanDetilInstance) {
        if (susunanKepersonilanDetilInstance == null) {
            notFound()
            return
        }

        if (susunanKepersonilanDetilInstance.hasErrors()) {
            respond susunanKepersonilanDetilInstance.errors, view:'edit'
            return
        }

        susunanKepersonilanDetilInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SusunanKepersonilanDetil.label', default: 'SusunanKepersonilanDetil'), susunanKepersonilanDetilInstance.id])
                redirect susunanKepersonilanDetilInstance
            }
            '*'{ respond susunanKepersonilanDetilInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SusunanKepersonilanDetil susunanKepersonilanDetilInstance) {

        if (susunanKepersonilanDetilInstance == null) {
            notFound()
            return
        }

        susunanKepersonilanDetilInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SusunanKepersonilanDetil.label', default: 'SusunanKepersonilanDetil'), susunanKepersonilanDetilInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'susunanKepersonilanDetilInstance.label', default: 'SusunanKepersonilanDetil'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
