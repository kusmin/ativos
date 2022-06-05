package ativos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AlocacaoController {

    AlocacaoService alocacaoService
    BuscarService buscarService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond alocacaoService.list(params), model:[alocacaoCount: alocacaoService.count()]
    }

     def buscar(String ativoNome, String nomeMembroEquipe) {
        def busca = buscarService.buscarAlocacoes(ativoNome,  nomeMembroEquipe)
        render view: "index", model:[busca: busca]
    }

    def show(Long id) {
        respond alocacaoService.get(id)
    }

    def create() {
        respond new Alocacao(params)
    }

    def save(Alocacao alocacao) {
        if (alocacao == null) {
            notFound()
            return
        }

        try {
            alocacaoService.save(alocacao)
        } catch (ValidationException e) {
            respond alocacao.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), alocacao.id])
                redirect alocacao
            }
            '*' { respond alocacao, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond alocacaoService.get(id)
    }

    def update(Alocacao alocacao) {
        if (alocacao == null) {
            notFound()
            return
        }

        try {
            alocacaoService.save(alocacao)
        } catch (ValidationException e) {
            respond alocacao.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), alocacao.id])
                redirect alocacao
            }
            '*'{ respond alocacao, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        alocacaoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
