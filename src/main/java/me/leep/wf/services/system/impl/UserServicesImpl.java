/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntity;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.repository.system.UserRepository;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.IUserServices;
import me.leep.wf.util.BeanUtil;

import org.activiti.engine.IdentityService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

/**
 * @author 李鹏
 * 
 */
@Service("userServices")
public class UserServicesImpl extends BaseServiceImpl<BaseDto, BaseEntity>
		implements IUserServices {
	@Autowired
	private IdentityService identityService;
	@Autowired
	private UserRepository userRepository;// 注入UserRepository

	@Override
	public User initUserDto(String rowid) {
		User user = new User();
		// user.setId(UUID.randomUUID().toString());
		if (StringUtils.isNotEmpty(rowid)) {
			UserBean userBean = (UserBean) findById(rowid);
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
	public String save(BaseDto dto) {
		UserBean entity = new UserBean();
		BeanUtil.copyBean(dto, entity);

		entity = userRepository.save(entity);

		org.activiti.engine.identity.User user = identityService
				.createUserQuery().userId(entity.getId()).singleResult();
		if (user == null)
			user = identityService.newUser(entity.getId());

		user.setEmail(entity.getEmail());
		user.setFirstName(entity.getName());
		user.setPassword("");
		identityService.saveUser(user);
		BeanUtil.copyBean(entity, dto);

		return entity.getId();
	}

	public List<BaseDto> findAll(int page, int size) {
		List<UserBean> beanList = userRepository.findAll(
				new PageRequest(page, size)).getContent();
		List<BaseDto> result = new ArrayList<BaseDto>();
		for (int i = 0; i < beanList.size(); i++) {
			BaseEntity bean = (BaseEntity) beanList.get(i);
			BaseDto dto = new User();
			BeanUtil.copyBean(bean, dto);
			result.add(dto);

		}
		return result;

	}

	public void delete(UserBean entity) {
		userRepository.delete(entity);
	}

	public UserBean findById(String id) {
		return userRepository.findById(id);
	}

	public boolean exists(String id) {
		return userRepository.exists(id);
	}

	public void deleteList(String[] rowids) {
		userRepository.delete(userRepository.findAll(Arrays.asList(rowids)));
	}

	public Integer countAll() {
		return Integer.valueOf((int) userRepository.count());
	}

}
