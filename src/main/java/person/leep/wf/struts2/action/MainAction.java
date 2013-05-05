/**
 * 
 */
package person.leep.wf.struts2.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

/**
 * @author lipeng
 * 
 */
public class MainAction extends BaseAction {

	private String menu;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	@Action(value = "/main")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer("");
		sb.append("<ul class='nav'><li class='active'><a href='#' rel='main/welcome.action'><iclass='icon-home icon-black'></i>欢迎</a></li><li class='dropdown'><a data-toggle='dropdown'class='dropdown-toggle' href='#'><iclass='icon-th-large icon-black'></i>开始<b class='caret'></b></a><ul class='dropdown-menu'><li><a href='#' rel='oa/leave/apply'>请假申请(自定)</a></li><li><a href='#' rel='oa/leave/list/task'>请假办理(自定)</a></li><li><a href='#' rel='oa/leave/list/running'>运行中流程(自定)</a></li><li><a href='#' rel='oa/leave/list/finished'>已结束流程(自定)</a></li></ul></li><li class='dropdown'><a data-toggle='dropdown'class='dropdown-toggle' href='#'><iclass='icon-fire icon-black'></i>动态表单<b class='caret'></b></a><ul class='dropdown-menu'><li><a href='#' rel='form/dynamic/process-list'>流程列表(动态)</a></li><li><a href='#' rel='form/dynamic/task/list'>任务列表(动态)</a></li><li><a href='#'rel='form/dynamic/process-instance/running/list'>运行中流程表(动态)</a></li><li><a href='#'rel='form/dynamic/process-instance/finished/list'>已结束流程(动态)</a></li></ul></li><li><a href='#' rel='workflow/process-list'><iclass='icon-wrench icon-black'></i>流程管理</a></li></ul>");
		menu = sb.toString();
		return SUCCESS;
	}

	/**
	 * @return the menu
	 */
	public String getMenu() {
		return menu;
	}

	/**
	 * @param menu
	 *            the menu to set
	 */
	public void setMenu(String menu) {
		this.menu = menu;
	}

}
