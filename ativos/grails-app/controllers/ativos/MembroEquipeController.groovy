package ativos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class MembroEquipeController {

    MembroEquipeService membroEquipeService
    BuscarService buscarService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond membroEquipeService.list(params), model:[membroEquipeCount: membroEquipeService.count()]
    }

    def show(Long id) {
        respond membroEquipeService.get(id)
    }

    def buscar(String nomeMembroEquipe, String ativoMembroEquipe){
        def buscarMembroEquipe = buscarService.buscarMembroEquipe(nomeMembroEquipe, ativoMembroEquipe)
        render view: "index", model:[buscarMembroEquipe: buscarMembroEquipe]
    }

    def create() {
        respond new MembroEquipe(params)
    }

    def save(MembroEquipe membroEquipe) {
        if (membroEquipe == null) {
            notFound()
            return
        }

        try {
            membroEquipeService.save(membroEquipe)
        } catch (ValidationException e) {
            respond membroEquipe.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'membroEquipe.label', default: 'MembroEquipe'), membroEquipe.id])
                redirect membroEquipe
            }
            '*' { respond membroEquipe, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond membroEquipeService.get(id)
    }

    def update(MembroEquipe membroEquipe) {
        if (membroEquipe == null) {
            notFound()
            return
        }

        try {
            membroEquipeService.save(membroEquipe)
        } catch (ValidationException e) {
            respond membroEquipe.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'membroEquipe.label', default: 'MembroEquipe'), membroEquipe.id])
                redirect membroEquipe
            }
            '*'{ respond membroEquipe, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        membroEquipeService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'membroEquipe.label', default: 'MembroEquipe'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'membroEquipe.label', default: 'MembroEquipe'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
