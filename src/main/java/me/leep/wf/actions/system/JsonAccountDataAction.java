/**
 * 
 */
package me.leep.wf.actions.system;

import java.util.List;

import me.leep.wf.actions.base.ListAction;
import me.leep.wf.entity.system.Account;
import me.leep.wf.services.system.aware.IAccountService;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author lipeng
 * 
 */
@ParentPackage("json-default")
@Result(name = "success", type = "json")
public class JsonAccountDataAction extends ListAction {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAccountService accountService;

	private List<Account> gridModel;
	

	public String execute() throws Exception {
		gridModel = accountService.findAll();

		setRecords(gridModel.size());


		// calculate the total pages for the query
		setTotal((int) Math.ceil((double) getRecords() / (double) getRows()));

		return SUCCESS;
	}
	


	/**
	 * @return the accountService
	 */
	public IAccountService getAccountService() {
		return accountService;
	}

	/**
	 * @param accountService
	 *            the accountService to set
	 */
	public void setAccountService(IAccountService accountService) {
		this.accountService = accountService;
	}

	/**
	 * @return the gridModel
	 */
	public List<Account> getGridModel() {
		return gridModel;
	}

	/**
	 * @param gridModel
	 *            the gridModel to set
	 */
	public void setGridModel(List<Account> gridModel) {
		this.gridModel = gridModel;
	}


}
