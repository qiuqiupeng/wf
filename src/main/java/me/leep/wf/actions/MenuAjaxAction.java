/**
 * 
 */
package me.leep.wf.actions;

import java.util.Map;


import me.leep.wf.actions.base.EditAction;


import com.opensymphony.xwork2.ActionContext;

/**
 * @author lipeng
 *
 */
public class MenuAjaxAction extends EditAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* （非 Javadoc）
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();   
	    Map<String, Object> session = context.getSession();  
	    System.out.println("@@@@@@@" + session);
		return SUCCESS;
	}
	 

}
