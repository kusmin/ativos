package ativos

class MembroEquipe {

    String nome
    Boolean ativo = true

    String toString() {
        this.nome
    }
    
    static constraints = {
        nome nullable: false, blank: false, maxSize: 128, unique: true
        ativo nullable:false, blank: false
    }
}
