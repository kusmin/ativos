package ativos

class Alocacao {

    Date dataRetirada
    Date dataDevolucao

    static belongsTo = [ativo: Ativo, membroEquipe: MembroEquipe]

    static constraints = {
        dataRetirada nullable: false, blank:false
        dataDevolucao nullable: true, blank:true
        ativo nullable:false, blank: false, unique:true
        membroEquipe nullable: false, blank: false
    }
}
