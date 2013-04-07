/**
 * 
 */
package person.leep.wf.struts2.action;

import person.leep.wf.hibernate.ScmSysAccount;
import person.leep.wf.services.InitLoginService;


/**
 * @author lipeng
 * 
 */
public class InitLoginAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private InitLoginService service;
	private String user;



	/**
	 * @return the service
	 */
	public InitLoginService getService() {
		return service;
	}

	/**
	 * @param service the service to set
	 */
	public void setService(InitLoginService service) {
		this.service = service;
	}

	/**
	 * @return the user
	 */
	public String getUser() {
		return user;
	}

	/**
	 * @param user
	 *            the user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}

	public String index() throws Exception {
		ScmSysAccount account = service.check();
		setUser(account == null ? "" : account.getName());
		return SUCCESS;
	}

}
