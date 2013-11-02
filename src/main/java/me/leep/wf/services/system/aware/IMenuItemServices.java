/**
 * 
 */
package me.leep.wf.services.system.aware;

import java.util.List;

import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.entity.system.ItemBean;
import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface IMenuItemServices extends IBaseService {
	
	public void vo2entity(List<AcordionItemBean> items);
	
	public List<AcordionItemBean> entity2vo();
	
}
