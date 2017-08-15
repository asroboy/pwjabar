package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class SuratMasukController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SuratMasuk.list(params), model: [suratMasukInstanceCount: SuratMasuk.count()]
    }

    def show(SuratMasuk suratMasukInstance) {
        respond suratMasukInstance
    }

    def create() {
        respond new SuratMasuk(params)
    }

    @Transactional
    def save(SuratMasuk suratMasukInstance) {
        if (suratMasukInstance == null) {
            notFound()
            return
        }

        def file = request.getFile('arsip')
        if (file) {
            println("" + file.originalFilename)
            params.namafile = file.originalFilename
            suratMasukInstance.namafile = file.originalFilename
        }
        if (suratMasukInstance.hasErrors()) {
            respond suratMasukInstance.errors, view: 'create'
            return
        }

        suratMasukInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'suratMasukInstance.label', default: 'SuratMasuk'), suratMasukInstance.id])
                redirect suratMasukInstance
            }
            '*' { respond suratMasukInstance, [status: CREATED] }
        }
    }


    def edit(SuratMasuk suratMasukInstance) {
        respond suratMasukInstance
    }

    @Transactional
    def update(SuratMasuk suratMasukInstance) {
        if (suratMasukInstance == null) {
            notFound()
            return
        }

        def file = request.getFile('arsip')
        if (file) {
            println("" + file.originalFilename)
            params.namafile = file.originalFilename
            suratMasukInstance.namafile = file.originalFilename
        }

        if (suratMasukInstance.hasErrors()) {
            respond suratMasukInstance.errors, view: 'edit'
            return
        }

        suratMasukInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SuratMasuk.label', default: 'SuratMasuk'), suratMasukInstance.id])
                redirect suratMasukInstance
            }
            '*' { respond suratMasukInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SuratMasuk suratMasukInstance) {

        if (suratMasukInstance == null) {
            notFound()
            return
        }

        suratMasukInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SuratMasuk.label', default: 'SuratMasuk'), suratMasukInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'suratMasukInstance.label', default: 'SuratMasuk'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def download() {
        SuratMasuk documentInstance = SuratMasuk.get(params.id)
        if (documentInstance == null) {
            flash.message = "Document not found."
            redirect(action: 'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.namafile}\"")
            def outputStream = response.getOutputStream()
            outputStream << documentInstance.arsip
            outputStream.flush()
            outputStream.close()
        }
    }
}
