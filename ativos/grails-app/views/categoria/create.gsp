<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <a href="#create-categoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index">Lista de Categorias</g:link></li>
                </ul>
            </div>
            <div id="create-categoria" class="content scaffold-create" role="main">
                <h1 class="h1">Criar</h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.categoria}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.categoria}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form resource="${this.categoria}" method="POST">
                    <fieldset class="form">
                        <f:all bean="categoria"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="Salvar" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
