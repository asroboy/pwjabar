package org.pwjabar.data

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class SubTestController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    static scaffold = true
}
