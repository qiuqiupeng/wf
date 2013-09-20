package me.leep.wf.actions.system;

import java.util.ArrayList;
import java.util.List;

import me.leep.wf.actions.base.EditAction;
import me.leep.wf.dto.User;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;
import net.sf.cglib.beans.BeanCopier;

public class UserEditAction extends EditAction {

	private IUserServices userServices;
	/**
	 * 
	 */
	private static final long serialVersionUID = 4096802666866337184L;
	private User user;

	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		user = new User();
		user.setTest("test");
		return super.execute();
	}
	
	

	@Override
	public String save() throws Exception {
		System.out.println(">>>>>>>>" + user + "save2>>>>>>>>>>>>>");
		BeanCopier copy = BeanCopier.create(User.class, UserBean.class,
				false);
		BaseEntiy entity = new UserBean();
		copy.copy(user, entity, null);
		userServices.save(entity);

		List<String> messages = new ArrayList<String>();
		messages.add("保存成功");
		setActionMessages(messages);
		return SUCCESS;
	}
	

	@Override
	public String addNew() throws Exception {
		System.out.println("-------------new--------------");
		user = new User();
		return SUCCESS;
	}

	@Override
	public String delete() throws Exception {
		System.out.println("----------------delete--------------");
		return super.delete();
	}

	/**
	 * @return user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user
	 *            要设置的 user
	 */
	public void setUser(User user) {
		this.user = user;
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
