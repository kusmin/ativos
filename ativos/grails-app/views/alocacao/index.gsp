<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alocacao.label', default: 'Alocacao')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <a href="#list-alocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="create" action="create">Nova</g:link></li>
                </ul>
            </div>
            <div class="container">
                <g:render template="form" model="['buscarAlocacoes':buscarAlocacoes]" />
            </div>
            
            <g:if test="${ busca }">
                <div class="container table-responsive">
                    <table class="table table-striped table-hover ">
                        <thead>
                            <tr>
                                <th>Nome do ativo</th>
                                <th>Data de retirada</th>
                                <th>Data de devoluçao</th>
                                <th>Membro</th>
                            </tr>
                        </thead>

                        <tbody>
                        <g:each var="alocacoes" in="${busca}" status="i">
                            <tr>                        
                                <td><g:link controller="ativo" action="show" id="${alocacoes.ativo.id}"> ${alocacoes.ativo.nome}</g:link></td>
                                <td><g:formatDate format = "dd/MM/yyyy" date = "${alocacoes.dataRetirada}" /></td> 
                                <td><g:if test="${ alocacoes.dataDevolucao != null}">
                                   <g:formatDate format = "dd/MM/yyyy" date = "${alocacoes.dataDevolucao}" />
                                </g:if><g:else>
                                   <g:link controller="alocacao" action="edit" id="${alocacoes.id}">Não devolvido</g:link>
                                </g:else></td>   
                                <td><g:link  controller="membroEquipe" action="show" id="${alocacoes.membroEquipe.id}">${alocacoes.membroEquipe.nome}</g:link></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </g:if>
        </div>
    </body>
</html>