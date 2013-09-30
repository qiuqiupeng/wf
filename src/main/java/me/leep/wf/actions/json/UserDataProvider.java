package me.leep.wf.actions.json;

import java.util.List;

import me.leep.wf.actions.base.BaseDataProvider;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;

/**
 * @author 李鹏
 * 
 */
public class UserDataProvider extends BaseDataProvider {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4302036849790278738L;

	private IUserServices userServices;

	public String execute() throws Exception {

		initGridParam(UserBean.class);

		List<BaseDto> result = userServices.findAll(UserBean.class, User.class, null,  getFrom(), getTo());

		this.setGridModel(result);

		return SUCCESS;
	}

	/**
	 * @param userServices
	 *            要设置的 userServices
	 */
	public void setUserServices(IUserServices userServices) {
		this.userServices = userServices;
	}

}
