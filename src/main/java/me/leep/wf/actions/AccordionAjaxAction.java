/**
 * 
 */
package me.leep.wf.actions;

import java.util.ArrayList;
import java.util.List;


import me.leep.wf.actions.base.EditAction;
import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.util.BeanUtil;
import me.leep.wf.util.CodeUtil;


/**
 * @author 李鹏
 * 
 */
public class AccordionAjaxAction extends EditAction {

	private static final long serialVersionUID = 1L;

	private List<AcordionItemBean> items;

	public String execute() throws Exception {

		items = new ArrayList<AcordionItemBean>();
		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表1"), "用户列表1",
				"icon-cogs"));
		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表2"), "用户列表2",
				"icon-cogs"));
		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表3"), "用户列表3",
				"icon-cogs"));
		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表4"), "用户列表4",
				"icon-cogs"));
		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表5"), "用户列表5",
				"icon-cogs"));
		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表6"), "用户列表6",
				"icon-cogs"));
		List<AcordionItemBean> submenu = new ArrayList<AcordionItemBean>();
		submenu.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表71"),
				"用户列表71", "icon-cogs"));
		submenu.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表72"),
				"用户列表72", "icon-cogs"));

		items.add(new AcordionItemBean(CodeUtil.getShortCode("用户列表7"), CodeUtil
				.getShortCode("用户列表7"), "用户列表7", "icon-cogs", true, submenu));

		String xml = BeanUtil.bean2XML(items);
		System.out.println(xml);

		return SUCCESS;
	}



	/**
	 * @return items
	 */
	public List<AcordionItemBean> getItems() {
		return items;
	}

	/**
	 * @param items
	 *            要设置的 items
	 */
	public void setItems(List<AcordionItemBean> items) {
		this.items = items;
	}

}
