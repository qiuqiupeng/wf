package me.leep.wf.actions.system;

import java.util.List;

import me.leep.wf.actions.base.ListAction;
import me.leep.wf.dto.User;

/**
 * @author 李鹏
 *
 */
public class UserListAction extends ListAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6414899855690309595L;
	
	private List<User> gridModel;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	/**
	 * @return gridModel
	 */
	public List<User> getGridModel() {
		return gridModel;
	}

	/**
	 * @param gridModel 要设置的 gridModel
	 */
	public void setGridModel(List<User> gridModel) {
		this.gridModel = gridModel;
	}

}
