/**
 * 
 */
package me.leep.wf.actions.system;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import me.leep.wf.actions.base.BaseAction;

/**
 * @author lipeng
 *
 */
public class MenuAjaxAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List list;
	
	private Map menuMap;

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		menuMap = new HashMap();
		
		Map menuItemMap = new HashMap();
		
		menuMap.put("index", "test1");
		menuMap.put("welcome", "test2");
		menuMap.put("t3", "test3");

		menuItemMap.put("t4", "test4");
		menuItemMap.put("t5", "test5");
		menuItemMap.put("t6", "test6");
		
		menuMap.put("t7", menuItemMap);
		
		return SUCCESS;
	}

	/**
	 * @return the list
	 */
	public List getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(List list) {
		this.list = list;
	}

	/**
	 * @return the menuMap
	 */
	public Map getMenuMap() {
		return menuMap;
	}

	/**
	 * @param menuMap the menuMap to set
	 */
	public void setMenuMap(Map menuMap) {
		this.menuMap = menuMap;
	}
	

}
