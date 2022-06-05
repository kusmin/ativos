package ativos

import grails.gorm.transactions.Transactional
import java.util.Date


@Transactional(readOnly=true)
class BuscarService {

    def busca(String nomeCategoria, String ativosCodigo, String ativosNome, String ativosDescricao){
        def resultado = Ativo.withCriteria{
            if(ativosCodigo){
                ilike "codigo", "%${ativosCodigo}%"
            }
            if(ativosNome){
                ilike "nome", "%${ativosNome}%"
            }
            if(ativosDescricao){
                ilike "descricao", "%${ativosDescricao}%"
            }
            if(nomeCategoria){
                categoria{
                    eq "nome", "${nomeCategoria}"
                }
            }
            order("codigo", "asc")
        }
       return resultado
    }

    def buscarAlocacoes(String ativoNome, String nomeMembroEquipe){
        def resultado = Alocacao.withCriteria{
            if(ativoNome){
                ativo{
                    eq "nome", "${ativoNome}"
                }
            }
            if(nomeMembroEquipe){
                membroEquipe{
                    eq "nome", "${nomeMembroEquipe}"
                }
            }
            order("ativo", "asc")
        }
        return resultado
    }

    def buscarMembroEquipe(String nomeMembroEquipe, String ativoMembroEquipe){
        def resultadoBuscarMembroEquipe = MembroEquipe.withCriteria {
            if(nomeMembroEquipe){
                ilike "nome", "%${nomeMembroEquipe}%"
            }
            if(ativoMembroEquipe){
                if(ativoMembroEquipe == "Ativo"){
                    eq "ativo", true
                }else{
                    eq "ativo, false"
                }
            }
            order("nome", "asc")
        }
        return resultadoBuscarMembroEquipe
    }
  
}
