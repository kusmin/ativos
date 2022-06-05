 <h1 class="h1">Ativos</h1>


        <div class="form-inline mt-1 mg-3">
            <g:form class="form-row"action= "buscar">
                <div class="col-auto my-1">
                    <p>Codigo: </p><input class="form-control form-control" type="text" name="ativosCodigo" />
                </div>
                <div class="col-auto my-1">
                    <p>Nome: </p><input class="form-control form-control" type="text" name="ativosNome" />
                </div>
                <div class="col-auto my-1">
                    <p>Descrição: </p><input class="form-control form-control" type="text" name="ativosDescricao"  id="id" value="${value}"/>
                </div>
                <div class="col-auto my-1">
                    <p>Categoria: </p><g:select class=" form-control custom-select mr-sm-2 " name="nomeCategoria" from="${ativos.Categoria.list()}" value="${Categoria?.nome}" optionValue="nome" optionKey = "nome" noSelection="['':'Selecione uma categoria']" />
                </div>
                <div class="col-auto my-1">
                    <g:submitButton class="btn btn-secondary mt-4" value="Buscar" name="buscar" />
                </div>
            </g:form>
        </div>