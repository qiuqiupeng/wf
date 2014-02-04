/*********************************************************************
 * 源代码版权归作者（们）所有
 *
 * 以 Apache License, Version 2.0 方式授权使用，具体参见：
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 ********************************************************************/
package me.leep.wf.services.system.aware;

import java.util.List;

import me.leep.wf.bean.AcordionItemBean;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntity;
import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface IMenuItemServices extends IBaseService<BaseDto, BaseEntity> {
	
	public void vo2entity(List<AcordionItemBean> items);
	
	public List<AcordionItemBean> entity2vo();
	
}
