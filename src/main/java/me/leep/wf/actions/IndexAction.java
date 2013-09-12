/**
 * IndexAction类
 */
package me.leep.wf.actions;

import me.leep.wf.actions.base.EditAction;

/**
 * @author lipeng
 *
 */
public class IndexAction extends EditAction {
	private String email;
	private String password;

	/**
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email 要设置的 email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password 要设置的 password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 66427915185034101L;

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("--------------------------------" + email + ">>>>>>>>>" + password);
		return SUCCESS;
	}
	

}
