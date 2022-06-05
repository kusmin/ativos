package ativos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AtivosServiceSpec extends Specification {

    AtivosService ativosService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Ativos(...).save(flush: true, failOnError: true)
        //new Ativos(...).save(flush: true, failOnError: true)
        //Ativos ativos = new Ativos(...).save(flush: true, failOnError: true)
        //new Ativos(...).save(flush: true, failOnError: true)
        //new Ativos(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //ativos.id
    }

    void "test get"() {
        setupData()

        expect:
        ativosService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Ativos> ativosList = ativosService.list(max: 2, offset: 2)

        then:
        ativosList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        ativosService.count() == 5
    }

    void "test delete"() {
        Long ativosId = setupData()

        expect:
        ativosService.count() == 5

        when:
        ativosService.delete(ativosId)
        sessionFactory.currentSession.flush()

        then:
        ativosService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Ativos ativos = new Ativos()
        ativosService.save(ativos)

        then:
        ativos.id != null
    }
}
