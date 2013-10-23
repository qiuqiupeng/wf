/**
 * LoginAction类
 */
package me.leep.wf.actions;

import me.leep.wf.actions.base.EditAction;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

/**
 * @author lipeng
 * 
 */
@Results({ @Result(name = "INDEX", location = "/index", type = "redirect") })
public class LoginAction extends EditAction {
	private String username;
	private String password;
	private boolean rememberMe;

	/**
	 * @return username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            要设置的 username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            要设置的 password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return rememberMe
	 */
	public boolean isRememberMe() {
		return rememberMe;
	}

	/**
	 * @param rememberMe
	 *            要设置的 rememberMe
	 */
	public void setRememberMe(boolean rememberMe) {
		this.rememberMe = rememberMe;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 66427915185034101L;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
//		System.out.println("--------" + username
//				+ ">>>>>>>>>" + password + "<<<<<<<<<<<" + rememberMe);
		
		if (username == null)
			return INPUT;
		else {
			//Example using most common scenario of username/password pair:
			UsernamePasswordToken token = new UsernamePasswordToken(username, password);

			//”Remember Me” built-in:
			token.setRememberMe(rememberMe);
			
			Subject currentUser = SecurityUtils.getSubject();
			
			try {
			    currentUser.login( token );
			    return "INDEX";
			} catch ( UnknownAccountException uae ) {
				//帐号不存在
				return SUCCESS;
			} catch ( IncorrectCredentialsException ice ) {
				//认证失败
				return SUCCESS;
			} catch ( LockedAccountException lae ) {
				//用户被锁定
				return SUCCESS;
			} catch ( AuthenticationException ae ) {
				//认证错误
				return SUCCESS;
			}
			
		}
	}

}
