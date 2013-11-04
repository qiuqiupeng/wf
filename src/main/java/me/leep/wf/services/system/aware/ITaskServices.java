/**
 * 
 */
package me.leep.wf.services.system.aware;


import java.util.List;
import java.util.Map;

import org.activiti.engine.task.Task;

import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface ITaskServices extends IBaseService {
	public List<Task> getAllTasks(String user, Map<String, Object> var);

}
