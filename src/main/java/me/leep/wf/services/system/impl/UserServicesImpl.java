/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.activiti.engine.IdentityService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.repository.system.UserRepository;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.IUserServices;
import me.leep.wf.util.BeanUtil;
import me.leep.wf.util.EntityUtil;

/**
 * @author 李鹏
 * 
 */
@Service("userServices")
public class UserServicesImpl extends BaseServiceImpl implements IUserServices {
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
	public void save(BaseDto dto) {

		BaseEntiy bean;
		if (dto.getId() != null)
			bean = userRepository.findById(dto.getId());
		else
			bean = null;
		if (bean != null) {
			dto.setCreater(bean.getCreater());
			dto.setCreteTime(bean.getCreteTime());
		}
		UserBean entity = new UserBean();
		entity = new UserBean();
		BeanUtil.copyBean(dto, entity);
		EntityUtil.checkEntity(entity);

		userRepository.save(entity);

		org.activiti.engine.identity.User user = identityService.newUser(entity
				.getId());
		user.setEmail(entity.getEmail());
		user.setFirstName(entity.getName());
		user.setPassword("");
		identityService.saveUser(user);
		BeanUtil.copyBean(entity, dto);

	}

	public List<BaseDto> findAll(int page, int size) {
		List<UserBean> beanList = userRepository.findAll(
				new PageRequest(page, size)).getContent();
		List<BaseDto> result = new ArrayList<BaseDto>();
		for (int i = 0; i < beanList.size(); i++) {
			BaseEntiy bean = (BaseEntiy) beanList.get(i);
			BaseDto dto = new User();
			BeanUtil.copyBean(bean, dto);
			result.add(dto);

		}
		return result;

	}

}
