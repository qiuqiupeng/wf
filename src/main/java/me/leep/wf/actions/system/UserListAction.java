package me.leep.wf.actions.system;

import org.apache.commons.lang3.StringUtils;

import me.leep.wf.actions.base.ListAction;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;

/**
 * @author 李鹏
 *
 */
public class UserListAction extends ListAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6414899855690309595L;
	private String rowid;

	private IUserServices userServices;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String delete() throws Exception {
		if (StringUtils.isNotBlank(rowid) && rowid.length() != 0) {
			userServices.deleteList(rowid.split(","), UserBean.class);
		}
		return SUCCESS;
	}

	/**
	 * @return rowid
	 */
	public String getRowid() {
		return rowid;
	}

	/**
	 * @param rowid 要设置的 rowid
	 */
	public void setRowid(String rowid) {
		this.rowid = rowid;
	}
	
	/**
	 * @return userServices
	 */
	public IUserServices getUserServices() {
		return userServices;
	}

	/**
	 * @param userServices
	 *            要设置的 userServices
	 */
	public void setUserServices(IUserServices userServices) {
		this.userServices = userServices;
	}

}
