/**
 * 
 */
package edu.ku.it.si.springjpaexample.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import edu.ku.it.si.springjpaexample.model.Person;
import edu.ku.it.si.springjpaexample.service.PersonService;

/**
 * Acts as the controller for handling user requests to delete a Person object.
 * 
 * @author brucephillips
 * 
 */
public class PersonSaver extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private transient PersonService personService;

	private Person person;

	/**
	 * Use emplid provided in the user's request to find the Person object and
	 * then delete that Person's record.
	 */
	@Action(value = "executePersonSave", results = { @Result(name = "success", location = "demo/personsaved.jsp") })
	public String execute() {

		personService.save(person);

		return SUCCESS;
	}

	@Action(value = "inputPersonSave", results = { @Result(name = "input", location = "demo/inputpersonsave.jsp") })
	public String input() {

//		personService.save(person);

		return INPUT;
	}
	
	public void validate() {

		if (person.getFirst_name().length() == 0) {

			addFieldError("person.first_name", "First name is required.");

		}

		if (person.getLast_name().length() == 0) {

			addFieldError("person.last_name", "Last name is required.");

		}

	}

	public PersonService getPersonService() {
		return personService;
	}

	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

}
