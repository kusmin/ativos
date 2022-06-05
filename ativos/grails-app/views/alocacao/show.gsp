<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alocacao.label', default: 'Alocacao')}" />
        <title>Alocação ${id} </title>
    </head>
    <body>
        <div class="container">
            <a href="#show-alocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index">Lista de alocações</g:link></li>
                    <li><g:link class="create" action="create">Nova</g:link></li>
                </ul>
            </div>
            <div id="show-alocacao" class="content scaffold-show" role="main">
                <h1 class="h1">Alocação ${}</h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:display bean="alocacao" />
                <g:form resource="${this.alocacao}" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit" action="edit" resource="${this.alocacao}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
