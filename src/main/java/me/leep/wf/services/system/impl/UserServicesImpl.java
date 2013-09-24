/**
 * 
 */
package me.leep.wf.services.system.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import me.leep.wf.dto.system.User;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.IUserServices;
import me.leep.wf.util.BeanUtil;

/**
 * @author 李鹏
 * 
 */
@Service("userServices")
public class UserServicesImpl extends BaseServiceImpl implements IUserServices {

	@Override
	public User initUserDto(String rowid) {
		User user = new User();
		if (StringUtils.isNotEmpty(rowid)) {
			UserBean userBean = (UserBean) findById(rowid, UserBean.class);
			if (userBean != null) 
			BeanUtil.copyBean(userBean, user);
		}
		return user;
	}

}
