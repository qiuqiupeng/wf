/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.List;
import java.util.Map;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.services.BaseServiceImpl;
import me.leep.wf.services.system.aware.ITaskServices;

import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author lipeng
 * 
 */
@Service("taskServices")
public class TaskServicesImpl extends BaseServiceImpl<BaseDto, BaseEntiy> implements ITaskServices {

	@Autowired
	private TaskService taskService;

	public List<Task> getAllTasks(String user, Map<String, Object> var) {
		List<Task> tasks = taskService.createTaskQuery().taskAssignee(user)
				.orderByDueDate()
				.asc().list();
		return tasks;
	}

}
