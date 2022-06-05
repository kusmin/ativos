package ativos

import grails.gorm.services.Service

@Service(MembroEquipe)
interface MembroEquipeService {

    MembroEquipe get(Serializable id)

    List<MembroEquipe> list(Map args)

    Long count()

    void delete(Serializable id)

    MembroEquipe save(MembroEquipe membroEquipe)

}