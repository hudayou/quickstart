package quickstart.action;

import java.util.List;

import quickstart.model.Person;
import quickstart.service.PersonService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;

public class PersonAction implements Preparable {
    private PersonService service;
    private List<Person> persons;
    private Person person;
    private Integer id;

    public PersonAction(PersonService service) {
        this.service = service;
    }

    public String execute() {
        this.persons = service.findAll();
        return Action.SUCCESS;
    }

    public String save() {
        this.service.save(person);
        this.person = new Person();
        return execute();
    }

    public String remove() {
        service.remove(id);
        return execute();
    }

    public List<Person> getPersons() {
        return persons;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void prepare() throws Exception {
        if (id != null)
            person = service.find(id);
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }
}
