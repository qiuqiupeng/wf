/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.UUID;

import javax.persistence.EntityManagerFactory;

import org.activiti.engine.IdentityService;
import org.activiti.engine.ProcessEngine;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.repository.system.UserRepository;
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
	private ProcessEngine processEngine;
	@Autowired
	private IdentityService identityService;

	@Autowired
	private UserRepository userRepository;// 注入UserRepository

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

	/*
	 * （非 Javadoc）
	 * 
	 * @see me.leep.wf.services.BaseServiceImpl#save(me.leep.wf.dto.BaseDto,
	 * java.lang.Class)
	 */
	@Override
	public void save(BaseDto dto, Class clazz) {
		// super.save(dto, clazz);

		BaseEntiy bean;
		if (dto.getId() != null)
			bean = userRepository.findById(dto.getId());
		else
			bean = null;
		if (bean != null) {
			dto.setCreater(bean.getCreater());
			dto.setCreteTime(bean.getCreteTime());
		}
		UserBean entity;
		try {
			entity = (UserBean) Class.forName(clazz.getName()).newInstance();
			BeanUtil.copyBean(dto, entity);
			entity.setId(UUID.randomUUID().toString());
			userRepository.save(entity);
			
			identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
			
		} catch (InstantiationException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IllegalStateException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		

	}

	/**
	 * @param identityService
	 *            要设置的 identityService
	 */
	public void setIdentityService(IdentityService identityService) {
		this.identityService = identityService;
	}

}
