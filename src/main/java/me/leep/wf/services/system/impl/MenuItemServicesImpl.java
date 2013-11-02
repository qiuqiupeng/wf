/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.ArrayList;
import java.util.List;

import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.entity.system.ItemBean;
import me.leep.wf.repository.system.MenuItemRepository;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.IMenuItemServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 李鹏
 * 
 */
@Service("menuItemServices")
public class MenuItemServicesImpl extends BaseServiceImpl implements
		IMenuItemServices {
	@Autowired
	private MenuItemRepository menuItemRepository;// 注入menuItemRepository

	public void vo2entity(List<AcordionItemBean> items) {
		List<ItemBean> entities = new ArrayList<ItemBean>();
		vo2entity(null, items, entities);
		menuItemRepository.save(entities);
	}

	public List<AcordionItemBean> entity2vo() {
		List<ItemBean> src = menuItemRepository.findAll();
		List<AcordionItemBean> result = entity2vo(null, src);

		return result;
	}

	public static void vo2entity(String parentId, List<AcordionItemBean> src,
			List<ItemBean> target) {
		for (AcordionItemBean dto : src) {
			ItemBean bean = new ItemBean();
			bean.setParentId(parentId);
			bean.setIcon(dto.getIcon());
			bean.setId(dto.getId());
			bean.setIsleaf(dto.isIsleaf());
			bean.setName(dto.getName());
			bean.setNumber(dto.getNumber());

			target.add(bean);

			if (dto.getSubMenu() != null) {
				vo2entity(dto.getId(), dto.getSubMenu(), target);
			}
		}
	}

	public static List<AcordionItemBean> entity2vo(String parentId,
			List<ItemBean> src) {
		List<AcordionItemBean> target = getListByParentId(null, src);
		return target;
	}

	private static List<AcordionItemBean> getListByParentId(String parentId,
			List<ItemBean> src) {
		List<AcordionItemBean> list = new ArrayList<AcordionItemBean>();

		for (ItemBean bean : src) {
			if (parentId == null) {
				if (bean.getParentId() == null) {
					AcordionItemBean dto = new AcordionItemBean();
					dto.setIcon(bean.getIcon());
					dto.setId(bean.getId());
					dto.setIsleaf(bean.isIsleaf());
					dto.setName(bean.getName());
					dto.setNumber(bean.getName());
					dto.setSubMenu(getListByParentId(bean.getId(), src));
					list.add(dto);
				}

			} else if (parentId.equals(bean.getParentId())) {
				AcordionItemBean dto = new AcordionItemBean();
				dto.setIcon(bean.getIcon());
				dto.setId(bean.getId());
				dto.setIsleaf(bean.isIsleaf());
				dto.setName(bean.getName());
				dto.setNumber(bean.getName());
				dto.setSubMenu(getListByParentId(bean.getId(), src));
				list.add(dto);
			}
		}
		return list;
	}
}
