/**
 * 
 */
package me.leep.wf.services.system.aware;


import java.util.List;
import java.util.Map;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntity;
import me.leep.wf.services.IBaseService;

import org.activiti.engine.task.Task;

/**
 * @author 李鹏
 *
 */
public interface ITaskServices extends IBaseService<BaseDto, BaseEntity> {
	public List<Task> getAllTasks(String user, Map<String, Object> var);

}
