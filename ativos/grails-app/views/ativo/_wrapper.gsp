<div class="input-group mb-3 mt-2">
        <div class="input-group-prepend">
                <label class="input-group-text" for="${property}">${required? '*' : '' } ${label} </label>
        </div>
        <g:if test="${ property == "nome" }">
                <input id="${property}" name="${property}" placeholder="Digite um nome" type="text" class="form-control form-value" ${required?:''} value="${value}">  
        </g:if>
        <g:if test="${ property == "codigo" }">
                <input id="${property}" name="${property}" placeholder="Digite um código" type="text" class="form-control form-value" ${required?:''} value="${value}">  
        </g:if>
        <g:if test="${property == "categoria"}">
           <g:select class=" form-control custom-select mr-sm-2 " name="categoria.id" from="${ativos.Categoria.list()}"  optionValue="nome"  optionKey = "id" id="${property}" noSelection="['':'Selecione uma categoria']" />
        </g:if>
        <g:if test="${ property == "descricao" }">
                <input id="${property}" name="${property}" placeholder="Digite uma descrição" type="text" class="form-control form-value" ${required?:''} value="${value}">  
        </g:if>
</div>