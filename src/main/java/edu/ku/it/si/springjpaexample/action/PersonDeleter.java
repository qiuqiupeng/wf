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
 * Acts as the controller for handling user requests to delete a Person object.
 * 
 * @author brucephillips
 * 
 */
public class PersonDeleter extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private transient PersonService personService;

	private Person person;

	private Long emplid;

	/**
	 * Use emplid provided in the user's request to find the Person object and
	 * then delete that Person's record.
	 */
	@Action(value = "personDelete", results = { @Result(name = "success", location = "demo/persondeleted.jsp") })
	public String execute() {

		person = personService.findbyEmplid(emplid);

		personService.delete(person);

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
