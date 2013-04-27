/**
 * 
 */
package edu.ku.it.si.springjpaexample.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import edu.ku.it.si.springjpaexample.model.Person;
import edu.ku.it.si.springjpaexample.service.PersonService;

/**
 * Acts as the controller for handling user requests to edit a Person object.
 * 
 * @author brucephillips
 * 
 */
public class PersonUpdater extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private transient PersonService personService;

	private Person person;

	private Long emplid;

	/**
	 * Use the emplid value that was provided when the user clicked on the edit
	 * link get the associated Person object.
	 * 
	 */
	public String input() {

		person = personService.findbyEmplid(emplid);

		return INPUT;

	}

	/**
	 * Use the state of the Person object (which was updated by the user in the
	 * view) to update the data repository.
	 */
	@Action(value = "*PersonUpdate", results = {
			@Result(name = "success", location = "personupdated.jsp"),
			@Result(name = "input", location = "inputpersonupdate.jsp") })
	public String execute() {

		personService.update(person);

		return SUCCESS;
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

	public Long getEmplid() {
		return emplid;
	}

	public void setEmplid(Long emplid) {
		this.emplid = emplid;
	}

}
