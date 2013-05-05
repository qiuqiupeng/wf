/**
 * 
 */
package edu.ku.it.si.springjpaexample.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.json.annotations.JSON;

import person.leep.wf.struts2.action.ListAction;

import edu.ku.it.si.springjpaexample.model.Person;
import edu.ku.it.si.springjpaexample.service.PersonService;

/**
 * Controller used to respond to user request to find all employees.
 * 
 * @author bphillips
 * 
 */
@ParentPackage("json-default")
public class AllPersonsFinder extends ListAction {

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
	@Action(value = "allPersonsFinder", results = { @Result(name = "success", location = "demo/personsinfo.jsp") })
	public String execute() throws Exception {
		persons = personService.findAllEmployees();

		return SUCCESS;

	}

	@Action(value = "jsontable", results = { @Result(name = "success", type = "json") })
	@JSON(serialize = false)
	public String getTableData() throws Exception {
		persons = personService.findAllEmployees();

		int to = (getRows() * getPage());
		int from = to - getRows();

		// Count Rows (select count(*) from custumer)
		setRecords(persons.size());

		// Your logic to search and select the required data.
//		gridModel = CustumerDAO.find(from, to);

		// calculate the total pages for the query
		setTotal((int) Math.ceil((double) getRecords() / (double) getRows()));

		return SUCCESS;

	}

	public List<Person> getPersons() {
		return persons;
	}

	public void setPersons(List<Person> persons) {
		this.persons = persons;
	}

	@JSON(serialize = false)
	public PersonService getPersonService() {
		return personService;
	}

	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

}
