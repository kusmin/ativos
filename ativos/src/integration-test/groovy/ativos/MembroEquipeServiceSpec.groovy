package ativos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MembroEquipeServiceSpec extends Specification {

    MembroEquipeService membroEquipeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new MembroEquipe(...).save(flush: true, failOnError: true)
        //new MembroEquipe(...).save(flush: true, failOnError: true)
        //MembroEquipe membroEquipe = new MembroEquipe(...).save(flush: true, failOnError: true)
        //new MembroEquipe(...).save(flush: true, failOnError: true)
        //new MembroEquipe(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //membroEquipe.id
    }

    void "test get"() {
        setupData()

        expect:
        membroEquipeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<MembroEquipe> membroEquipeList = membroEquipeService.list(max: 2, offset: 2)

        then:
        membroEquipeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        membroEquipeService.count() == 5
    }

    void "test delete"() {
        Long membroEquipeId = setupData()

        expect:
        membroEquipeService.count() == 5

        when:
        membroEquipeService.delete(membroEquipeId)
        sessionFactory.currentSession.flush()

        then:
        membroEquipeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        MembroEquipe membroEquipe = new MembroEquipe()
        membroEquipeService.save(membroEquipe)

        then:
        membroEquipe.id != null
    }
}
