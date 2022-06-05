<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title>Lista de Categorias</title>
    </head>
    <body>
        <div class="container">
            <a href="#list-categoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav mb-1" role="navigation">
                <ul>
                    <li><g:link class="create" action="create">Nova</g:link></li>
                </ul>
            </div>
            <div id="list-categoria" class="content scaffold-list" role="main">
                <div class= "container">
                    <h1 class="h1">Lista de Categorias</h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <f:table class="table" collection="${categoriaList}" />

                    <div class="pagination">
                        <g:paginate total="${categoriaCount ?: 0}" />
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>