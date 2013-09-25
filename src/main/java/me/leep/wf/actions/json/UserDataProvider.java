package me.leep.wf.actions.json;

import java.util.ArrayList;
import java.util.List;

import me.leep.wf.actions.base.BaseDataProvider;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;
import me.leep.wf.util.BeanUtil;

/**
 * @author 李鹏
 * 
 */
public class UserDataProvider extends BaseDataProvider {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4302036849790278738L;

	private List<User> gridModel;
	private IUserServices userServices;

	public String execute() throws Exception {

		initGridParam(UserBean.class);

		// Calucalate until rows ware selected 计算被选择的最后行数
		int to = getTo();

		// Calculate the first row to read
		int from = getFrom();

		this.gridModel = new ArrayList<User>();
		List<BaseEntiy> result = userServices.findAll(UserBean.class, from, to);

		for (int i = 0; i < result.size(); i++) {
			UserBean userBean = (UserBean) result.get(i);
			User user = new User();
			BeanUtil.copyBean(userBean, user);
			gridModel.add(user);
		}

		return SUCCESS;
	}

	/**
	 * @return gridModel
	 */
	public List<User> getGridModel() {
		return gridModel;
	}

	/**
	 * @param gridModel
	 *            要设置的 gridModel
	 */
	public void setGridModel(List<User> gridModel) {
		this.gridModel = gridModel;
	}

	/**
	 * @param userServices
	 *            要设置的 userServices
	 */
	public void setUserServices(IUserServices userServices) {
		this.userServices = userServices;
	}

}
