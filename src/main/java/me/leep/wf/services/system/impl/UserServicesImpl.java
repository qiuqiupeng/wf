/**
 * 
 */
package me.leep.wf.services.system.impl;

import net.sf.cglib.beans.BeanCopier;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import me.leep.wf.dto.system.User;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.IUserServices;

/**
 * @author 李鹏
 *
 */
@Service("userServices")
public class UserServicesImpl extends BaseServiceImpl implements IUserServices {

	/* （非 Javadoc）
	 * @see me.leep.wf.services.system.aware.IUserServices#initUserDto(java.lang.String)
	 */
	@Override
	public User initUserDto(String rowid)  {
		User user = new User();
		if (StringUtils.isNotBlank(rowid)) {
			UserBean userBean = (UserBean) findById(rowid,
					UserBean.class);
			BeanCopier copy = BeanCopier.create(UserBean.class, User.class,
					false);
			copy.copy(userBean, user, null);
		}
		return user;
	}

}
