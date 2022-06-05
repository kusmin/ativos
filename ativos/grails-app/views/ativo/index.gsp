<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ativos.label', default: 'Ativos')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        
        <div class="container nav" role="navigation">
             <ul>
                <li><g:link class="create" action="create">Novo ativo</g:link></li>
            </ul>
        </div>

        <div class="container">
        <g:render template="form"/>
        </div>
            <g:if test="${busca}">
                <div class="container  mt-4 p-2">
                    <table class="table table-secondary table-sm ">
                        <thead>
                            <tr>
                                <th>Codigo do ativo</th>
                                <th>Nome do ativo</th>
                                <th>Categoria</th>
                                <th>Descrição do ativo</th>
                            </tr>
                        </thead>

                        <tbody>
                        <g:each var="ativos" in="${busca}" status="i">
                            <tr>                        
                                <td>${ativos.codigo}</td>
                                <td><g:link class="badge badge-pill " action="show" id="${ativos.id}">${ativos.nome}</g:link></td>
                                <td><g:link class="badge badge-pill " action="show" id="${ativos.categoria.id}">${ativos.categoria.nome}</g:link></td>
                                <td>${ativos.descricao}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </g:if>
        </div>
    </body>
</html>