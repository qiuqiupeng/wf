/**
 * 
 */
package me.leep.wf.actions.system;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import me.leep.wf.actions.base.EditAction;

/**
 * @author lipeng
 *
 */
public class LoginAction extends EditAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	@Action(value = "initLogin", results = { @Result(name = "success", location = "login.jsp") })
	public String initLogin() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}
