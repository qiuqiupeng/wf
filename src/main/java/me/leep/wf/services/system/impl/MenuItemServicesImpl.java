/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.ArrayList;
import java.util.List;

import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntity;
import me.leep.wf.entity.system.ItemBean;
import me.leep.wf.repository.system.MenuItemRepository;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.IMenuItemServices;
import me.leep.wf.util.MenuItemUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 李鹏
 * 
 */
@Service("menuItemServices")
public class MenuItemServicesImpl extends BaseServiceImpl<BaseDto, BaseEntity> implements
		IMenuItemServices {
	@Autowired
	private MenuItemRepository menuItemRepository;// 注入menuItemRepository

	public void vo2entity(List<AcordionItemBean> items) {
		List<ItemBean> entities = new ArrayList<ItemBean>();
		MenuItemUtil.vo2entity(null, items, entities);
		menuItemRepository.save(entities);
	}

	public List<AcordionItemBean> entity2vo() {
		List<ItemBean> src = menuItemRepository.findAll();
		List<AcordionItemBean> result = MenuItemUtil.entity2vo(null, src);

		return result;
	}

	
}
