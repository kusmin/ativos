<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ativo.label', default: 'Ativo')}" />
        <title>Edição de ativo</title>
    </head>
    <body>
        <div class="container">
            <a href="#edit-ativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index">Listagem de ativos</g:link></li>
                    <li><g:link class="create" action="create">Novo</g:link></li>
                </ul>
            </div>
            <div id="edit-ativos" class="content scaffold-edit" role="main">
                <h1 class="h1">Editar</h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.ativo}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.ativo}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form resource="${this.ativo}" method="PUT">
                    <g:hiddenField name="version" value="${this.ativo?.version}" />
                    <fieldset class="form">                  
                        <f:field bean="ativo" property="codigo"/>
                        <f:field bean="ativo" property="nome"/>
                        <f:field bean="ativo" property="descricao"/>
                        <f:field bean="ativo" property="categoria"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <input class="save" type="submit" value="Salvar" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
