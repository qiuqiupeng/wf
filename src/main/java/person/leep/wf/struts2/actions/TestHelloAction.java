/**
 * 
 */
package person.leep.wf.struts2.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lipeng
 * 
 */
public class TestHelloAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Action("action1")
	public String method1() {
		return SUCCESS;
	}

	@Action("/user")
	public String method2() {
		return SUCCESS;
	}
}
