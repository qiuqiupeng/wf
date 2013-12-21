/**
 * 
 */
package me.leep.wf.services.system.aware;

import java.util.List;

import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface IMenuItemServices extends IBaseService<BaseDto, BaseEntiy> {
	
	public void vo2entity(List<AcordionItemBean> items);
	
	public List<AcordionItemBean> entity2vo();
	
}
