/**
 * 
 */
package me.leep.wf.actions;


import me.leep.wf.actions.base.EditAction;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;


/**
 * @author lipeng
 * 
 */
@Results({ @Result(name = "result", location = "/${nextAction}", type = "redirect") })
public class EchoAction extends EditAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String echo;
	private String nextAction;

	/*
	 * （非 Javadoc）
	 * 
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>");
		// ActionContext context=ActionContext.getContext();
		// Map parameterMap=context.getParameters();
		// System.out.println(">>>>>>>>>>>>>>>>>>>>" +
		// parameterMap.get("echo"));
		// HttpServletRequest request =
		// (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
		String url = ServletActionContext.getRequest().getParameter("echo");
		System.out.println(">>>>>>>>>>>>>>>>>>>>" + url);
		if (StringUtils.isBlank(url))
			this.nextAction = "system/user-list";
		else
			this.nextAction = url;
		return "result";
	}

	/**
	 * @return nextAction
	 */
	public String getNextAction() {
		return nextAction;
	}

	/**
	 * @param nextAction
	 *            要设置的 nextAction
	 */
	public void setNextAction(String nextAction) {
		this.nextAction = nextAction;
	}

	/**
	 * @return echo
	 */
	public String getEcho() {
		return echo;
	}

	/**
	 * @param echo 要设置的 echo
	 */
	public void setEcho(String echo) {
		this.echo = echo;
	}

}
