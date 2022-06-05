 <h1> Buscar Membro da Equipe</h1>


        <div class="form-inline">
            <g:form class="form-row"action= "buscar">
                <div class="col-auto my-3">
                    <p>Nome: </p><input class="form-control form-control-sm" type="text" name="nomeMembroEquipe" />
                </div>

                <div class="col-auto my-3">
                    <g:select class=" form-control form-control-sm custom-select my-1 mr-sm-2 mt-4" name="ativoMembroEquipe" from="${['Ativo', 'Inativo']}" value="ativoMembroEquipe"  noSelection="['':'Todos']" />
                </div>
                <div class="col-auto my-3">
                    <input class="btn btn-secondary mt-4" type="submit" value="Buscar" />
                </div>
            </g:form>
        </div>