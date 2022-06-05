package ativos

import grails.gorm.services.Service

@Service(Ativo)
interface AtivoService{

    Ativo get(Serializable id)

    List<Ativo> list(Map args)

    Long count()

    void delete(Serializable id)

    Ativo save(Ativo ativos)
}