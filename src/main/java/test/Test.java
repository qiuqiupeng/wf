/**
 * 
 */
package test;

import person.leep.wf.hibernate.ScmSysAccount;
import person.leep.wf.services.InitLoginService;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lipeng
 *
 */
public class Test extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ScmSysAccount sysAccount;
	private InitLoginService service;
	private String user;



	/**
	 * @return the sysAccount
	 */
	public ScmSysAccount getSysAccount() {
		return sysAccount;
	}

	/**
	 * @param sysAccount the sysAccount to set
	 */
	public void setSysAccount(ScmSysAccount sysAccount) {
		this.sysAccount = sysAccount;
	}

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
		// TODO Auto-generated method stub

		setUser(service.check().getAccountId());
		setSysAccount(service.check());
		return SUCCESS;
	}

}
