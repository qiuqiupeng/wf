/**
 * 
 */
package me.leep.wf.actions;

import me.leep.wf.actions.base.EditAction;

/**
 * @author lipeng
 *
 */
public class ProfileAction extends EditAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* （非 Javadoc）
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>");
		return SUCCESS;
	}
	 

}
