/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.UUID;

import org.activiti.engine.IdentityService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.leep.wf.dto.BaseDto;
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
	
	@Autowired
	private IdentityService identityService;

	@Override
	public User initUserDto(String rowid) {
		User user = new User();
		user.setId(UUID.randomUUID().toString());
		if (StringUtils.isNotEmpty(rowid)) {
			UserBean userBean = (UserBean) findById(rowid, UserBean.class);
			if (userBean != null) 
			BeanUtil.copyBean(userBean, user);
		}
		return user;
	}

	/* （非 Javadoc）
	 * @see me.leep.wf.services.BaseServiceImpl#save(me.leep.wf.dto.BaseDto, java.lang.Class)
	 */
	@Override
	public void save(BaseDto dto, Class clazz) {
		// TODO 自动生成的方法存根
		super.save(dto, clazz);
		org.activiti.engine.identity.User activitiUser = identityService.newUser(dto.getNumber());
		activitiUser.setFirstName(dto.getName());
		identityService.saveUser(activitiUser);
	}


	/**
	 * @param identityService 要设置的 identityService
	 */
	public void setIdentityService(IdentityService identityService) {
		this.identityService = identityService;
	}

}
