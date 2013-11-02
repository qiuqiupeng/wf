/**
 * IndexAction类
 */
package me.leep.wf.actions;

import java.io.Reader;
import java.util.List;

import me.leep.wf.actions.base.EditAction;
import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.services.system.aware.IMenuItemServices;
import me.leep.wf.services.system.impl.ShiroRealmImpl.ShiroUser;
import me.leep.wf.util.BeanUtil;
import me.leep.wf.util.FileUtil;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author 李鹏
 *
 */
@Results({ @Result(name = "login", location = "/login", type = "redirect") })
public class IndexAction extends EditAction {
	private String username;
	

	private List<AcordionItemBean> items;
	
	@Autowired
	private IMenuItemServices services;

	/**
	 * @return username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username 要设置的 username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 66427915185034101L;

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
//		Reader reader = FileUtil.getFile("resources/menuall.xml", "UTF-8");
//		items = (List<AcordionItemBean>) BeanUtil.xml2Bean(reader);
		
		items = services.entity2vo();
		
		
		Subject currentUser = SecurityUtils.getSubject();
		if (!currentUser.isAuthenticated()) {
			return "login";
		} else {
			this.setUsername(((ShiroUser)currentUser.getPrincipal()).displayName);
			
			return SUCCESS;
		}
	}

	/**
	 * @return items
	 */
	public List<AcordionItemBean> getItems() {
		return items;
	}

	/**
	 * @param items 要设置的 items
	 */
	public void setItems(List<AcordionItemBean> items) {
		this.items = items;
	}
	

	

}
