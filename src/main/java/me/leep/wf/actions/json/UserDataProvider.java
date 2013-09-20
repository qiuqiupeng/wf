package me.leep.wf.actions.json;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.json.annotations.JSON;

import net.sf.cglib.beans.BeanCopier;
import me.leep.wf.actions.base.BaseDataProvider;
import me.leep.wf.dto.User;
import me.leep.wf.entity.BaseEntiy;
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

	private List<User> gridModel;
	private IUserServices userServices;
	
	

	public String execute() throws Exception {
		gridModel = new ArrayList<User>();
		List<UserBean> result = userServices.findAll(UserBean.class, 0, 20);
		BeanCopier copy = BeanCopier.create(UserBean.class, User.class, false);
		for (UserBean userBean  : result) {
			User user = new User();
			copy.copy(userBean, user, null);
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
	 * @param gridModel 要设置的 gridModel
	 */
	public void setGridModel(List<User> gridModel) {
		this.gridModel = gridModel;
	}


	/**
	 * @param userServices 要设置的 userServices
	 */
	public void setUserServices(IUserServices userServices) {
		this.userServices = userServices;
	}

	

}
