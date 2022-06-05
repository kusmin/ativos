package ativos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.converters.*

class AtivoController {

    AtivoService ativoService
    BuscarService buscarService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ativoService.list(params), model:[ativosCount: ativoService.count()]
    }

    def buscar(String nomeCategoria, String ativosCodigo, String ativosNome, String ativosDescricao){
        
        def busca = buscarService.busca(nomeCategoria, ativosCodigo, ativosNome, ativosDescricao)
        render view: "index", model: [busca: busca]
    }

    def show(Long id) {
        respond ativoService.get(id)
    }

    def create() {
        respond new Ativo(params)
    }

    def save(Ativo ativo) {
        if (ativo == null) {
            notFound()
            return
        }

        try {
            ativoService.save(ativo)
        } catch (ValidationException e) {
            respond ativo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ativo.label', default: 'Ativos'), ativo.id])
                redirect ativo
            }
            '*' { respond ativo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond ativoService.get(id)
    }

    def update(Ativo ativo) {
        if (ativo == null) {
            notFound()
            return
        }

        try {
            ativoService.save(ativo)
        } catch (ValidationException e) {
            respond ativo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ativo.label', default: 'Ativo'), ativo.id])
                redirect ativo
            }
            '*'{ respond ativo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        ativosService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ativos.label', default: 'Ativos'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ativos.label', default: 'Ativos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
