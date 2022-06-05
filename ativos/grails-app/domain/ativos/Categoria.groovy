package ativos

class Categoria {

    String nome

    String toString() {
        this.nome
    }

    static constraints = {
        nome unique: true, maxSize: 64, nullable: false, blank: false
    }
}
