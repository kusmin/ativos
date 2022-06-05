package ativos

class Ativo {

    String nome
    String codigo
    String descricao
    Date dataCadastro = new Date()

     String toString() {
        this.nome
    }

    static belongsTo = [categoria: Categoria]

    static constraints = {
        nome nullable: false, blank: false, maxSize: 128
        codigo unique: true, maxSize: 64
        categoria nullable: false, blank: false
        descricao maxSize: 16384, nullable: false, blank: false
    }
}
