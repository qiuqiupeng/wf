/**
 * 列表Action基类
 */
package me.leep.wf.actions.base;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ListAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 5078264277068533593L;

	private Map<String, Object> session;

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return the session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

}
