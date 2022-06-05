 <h1 class="h1"> Alocações</h1>
        <g:set var="alocacao" value="${ativos.Alocacao?.list()}"/>


        <div class="form-inline">
            <g:form class="form-row"action= "buscar">
                <div class="col-auto my-1">
                    <g:select class=" form-control form-control-sm custom-select my-1 mr-sm-2 mt-4" name="ativoNome" from="${ativos.Ativo?.list()}" value="${Ativo?.nome}" optionValue="nome" optionKey="nome"  noSelection="['':'Selecione um ativo']" />
                </div>
                <div class="col-auto my-1">
                    <g:select class=" form-control form-control-sm custom-select my-1 mr-sm-2 mt-4" name="nomeMembroEquipe"  from="${ativos.MembroEquipe?.list()}" value="${MembroEquipe?.nome}" optionValue="nome" optionKey="nome"  noSelection="['':'Selecione um membro']" />
                </div>
                <div class="col-auto my-1">
                    <g:submitButton class="btn btn-secondary mt-4" value="Buscar" name="buscar" />
                </div>
            </g:form>
        </div>

