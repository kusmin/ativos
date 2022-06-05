<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'membroEquipe.label', default: 'MembroEquipe')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <a href="#list-membroEquipe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <g:render template="form" model="['buscarMembroEquipe': buscarMembroEquipe]" />
        </div>

        <div class="container">
            <g:if test="${ buscarMembroEquipe }">
                <div class="container table-responsive">
                <table class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Ativo</th>
                        </tr>
                    </thead>

                    <tbody>
                    <g:each var="membro" in="${buscarMembroEquipe}" status="i">
                        <tr>                        
                            <td><g:link action="show" id="${membro.id}">${membro.nome}</g:link></td>
                            <td>${membro.ativo ? 'Sim': 'Não'}</td>                       
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            </g:if>
        </div>

    </body>
</html>