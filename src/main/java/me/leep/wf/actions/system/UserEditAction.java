package me.leep.wf.actions.system;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import me.leep.wf.actions.base.EditAction;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;
import me.leep.wf.util.CodeUtil;
import net.sf.cglib.beans.BeanCopier;

public class UserEditAction extends EditAction {

	private String rowid;
	private IUserServices userServices;
	/**
	 * 
	 */
	private static final long serialVersionUID = 4096802666866337184L;
	private User user;

	@Override
	public String execute() throws Exception {
		System.out.println(">>>>>>>>>>>>>>" + rowid);
		user = new User();
		if (rowid != null) {
			UserBean userBean = (UserBean) userServices.findById(rowid,
					UserBean.class);
			BeanCopier copy = BeanCopier.create(UserBean.class, User.class,
					false);
			copy.copy(userBean, user, null);
		}

		return super.execute();
	}

	@Override
	public String save() throws Exception {
		System.out.println(">>>>>>>>" + user + "save2>>>>>>>>>>>>>");
		if (StringUtils.isNotEmpty(user.getNumber())
				&& StringUtils.isNotEmpty(user.getName())
				&& StringUtils.isNotEmpty(user.getPassword())
				&& StringUtils.isNotEmpty(user.getRepassword())
				) {
			if (StringUtils.equals(user.getPassword(), user.getRepassword())) {
				UserBean bean = (UserBean) userServices.findById(user.getId(), UserBean.class);
				if(bean == null) {
					user.setPassword(CodeUtil.getStringMD5(user.getPassword()));
					BeanCopier copy = BeanCopier.create(User.class, UserBean.class,
							false);
					BaseEntiy entity = new UserBean();
					copy.copy(user, entity, null);
					userServices.save(entity);
					List<String> messages = new ArrayList<String>();
					messages.add("保存成功");
					setActionMessages(messages);
				} else {
					bean.setName(user.getName());
					bean.setNumber(user.getNumber());
					bean.setEmail(user.getEmail());
					bean.setPassword(CodeUtil.getStringMD5(user.getPassword()));
					userServices.update(bean);
					List<String> messages = new ArrayList<String>();
					messages.add("修改成功");
					setActionMessages(messages);
				}
				
			} else {
				List<String> errors = new ArrayList<String>();
				errors.add("输入的密码不一致！");
				setActionErrors(errors);
			}
				
		} else {
			List<String> errors = new ArrayList<String>();
			errors.add("数据为空");
			setActionErrors(errors);
		}
			

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

	/**
	 * @return rowid
	 */
	public String getRowid() {
		return rowid;
	}

	/**
	 * @param rowid
	 *            要设置的 rowid
	 */
	public void setRowid(String rowid) {
		this.rowid = rowid;
	}

}
