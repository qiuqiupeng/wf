package me.leep.wf.util;

import java.util.ArrayList;
import java.util.List;

import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.entity.system.ItemBean;

public class MenuItemUtil {

	private MenuItemUtil() {
		// TODO 自动生成的构造函数存根
	}

	/**
	 * 讲菜单VO列表转换成实体列表。
	 * 
	 * @param parentId 父节点。当父节点为null时，将获取全部根节点数据。
	 * @param src 数据源列表
	 * @param target 返回的结果列表
	 */
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

	/**
	 * 将实体列表对象转换成菜单项列表，当父节点为null时，将获取全部跟节点。
	 * @param parentId 父节点
	 * @param src 数据源列表。
	 * @return 返回结果。
	 */
	public static List<AcordionItemBean> entity2vo(String parentId,
			List<ItemBean> src) {
		List<AcordionItemBean> target = getListByParentId(parentId, src);
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