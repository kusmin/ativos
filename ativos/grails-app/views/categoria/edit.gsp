<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
           <a href="#edit-categoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index">Lista de Categorias</g:link></li>
                    <li><g:link class="create" action="create">Nova Categoria</g:link></li>
                </ul>
            </div>
            <div id="edit-categoria" class="content scaffold-edit" role="main">
                <h1 class="h1">Editar</h1>
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
                <g:form resource="${this.categoria}" method="PUT">
                    <g:hiddenField name="version" value="${this.categoria?.version}" />
                    <fieldset class="form">
                        <f:all bean="categoria"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <input class="save" type="submit" value="Salvar" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
