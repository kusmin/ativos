<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ativos.label', default: 'Ativos')}" />
        <title>Novo ativo</title>
    </head>
    <body>
        <div class="container">
            <a href="#create-ativos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="list" action="index" >Lista de ativos</g:link></li>
                </ul>
            </div>
            <div id="create-ativos" class="content scaffold-create" role="main">
                <h1 class="h1">Criar</h1>
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
                <g:form resource="${this.ativo}" method="POST">
                    <fieldset class="form">
                            <f:field bean="ativo" property="nome" label="Nome"/>
                            <f:field bean="ativo" property="codigo" label="Código"/>
                            <f:field bean="ativo" property="categoria"  />
                            <f:field bean="ativo" property="descricao" label ="Descrição" placeholder="Descrição"/>
                                
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="Criar" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
