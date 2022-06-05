<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alocacao.label', default: 'Alocacao')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <a href="#create-alocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index">Lista de alocações</g:link></li>
                </ul>
            </div>
            <div id="create-alocacao" class="content scaffold-create" role="main">
                <h1 class="h1"><g:message code="default.create.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.alocacao}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.alocacao}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form resource="${this.alocacao}" method="POST">
                    <fieldset class="form">
                        <f:field bean="alocacao" property="ativo"/>
                        <f:field bean="alocacao" property="membroEquipe" label="Membro da Equipe"/>
                        <f:field bean="alocacao" property="dataRetirada" label="Data de Retirada">
                            <g:datePicker name="dataRetirada" value="${new Date()}" precision="day" />
                        </f:field>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
