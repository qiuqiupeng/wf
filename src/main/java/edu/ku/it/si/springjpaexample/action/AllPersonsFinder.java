/**
 * 
 */
package edu.ku.it.si.springjpaexample.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import edu.ku.it.si.springjpaexample.model.Person;
import edu.ku.it.si.springjpaexample.service.PersonService;

/**
 * Controller used to respond to user request to find all employees.
 * 
 * @author bphillips
 * 
 */
public class AllPersonsFinder extends ActionSupport {

	private static final long serialVersionUID = 1L;

	/**
	 * Collection of all persons.
	 */
	private List<Person> persons;

	/**
	 * Provides methods to get Person objects.
	 */

	private transient PersonService personService;

	@Override
	@Action(value = "allPersonsFinder", results = { @Result(name = "success", location = "personsinfo.jsp") })
	public String execute() throws Exception {
		System.out.println("---------" + personService + "-------------");
		persons = personService.findAllEmployees();

		return SUCCESS;

	}

	public List<Person> getPersons() {
		return persons;
	}

	public void setPersons(List<Person> persons) {
		this.persons = persons;
	}

	public PersonService getPersonService() {
		return personService;
	}

	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

}
