/**
 * IndexAction类
 */
package me.leep.wf.actions;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import me.leep.wf.actions.base.EditAction;

/**
 * @author lipeng
 *
 */
@Results({ @Result(name = "login", location = "/login.action", type = "redirect") })
public class IndexAction extends EditAction {
	private String email;
	private String password;
	private String username;

	/**
	 * @return username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username 要设置的 username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

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
		Subject currentUser = SecurityUtils.getSubject();
		if (!currentUser.isAuthenticated()) {
			return "login";
		} else {
			this.setUsername(currentUser.getPrincipal().toString());
			System.out.println("--------------------------------" + currentUser.getPrincipal() + ">>>>>>>>>" + password);

			return SUCCESS;
		}
	}
	

}
