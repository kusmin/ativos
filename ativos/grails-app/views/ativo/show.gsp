<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ativo.label', default: 'Ativo')}" />
        <title>Ativo</title>
    </head>
    <body>
        <div class="container">
            <a href="#show-ativos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index">Listagem de ativos</g:link></li>
                    <li><g:link class="create" action="create">Novo</g:link></li>
                </ul>
            </div>
            <div id="show-ativo" class="content scaffold-show container" role="main">
                <div class="card mt-2 mb-2 p-2">
                    <h1 class="card-title h1">Ativo</h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <div class="container m-2 p-4">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <p>Codigo: <f:display bean="ativo" property="codigo"/></p>
                                </li>
                                <li class="list-group-item">
                                    <p>Nome: <g:link action="edit" id="${ativo.id}"><f:display bean="ativo" property="nome"/></g:link></p>
                                </li>
                                <li class="list-group-item">
                                    <p>Categoria: <f:display bean="ativo" property="categoria"/></p>
                                </li>
                                <li class="list-group-item">
                                    <p>Descrição: <f:display bean="ativo" property="descricao"/></p>
                                </li>
                                <li class="list-group-item">
                                    <f:display bean="ativo" property="dataCadastro">
                                        <p>Data de Cadastro: <g:formatDate  format="dd/MM/yyyy" date="${value}" /></p>
                                    </f:display>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <g:form resource="${this.ativo}" method="DELETE">
                    <fieldset class="buttons">
                        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
