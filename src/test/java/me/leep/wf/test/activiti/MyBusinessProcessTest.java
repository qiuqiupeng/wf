package me.leep.wf.test.activiti;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.test.ActivitiRule;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring_*_test.xml" })
public class MyBusinessProcessTest {

	@Autowired
	private RuntimeService runtimeService;

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private TaskService taskService;

	@Autowired
	@Rule
	public ActivitiRule activitiSpringRule;

	@Test
	public void simpleProcessTest() {

		// String deploymentId = repositoryService
		// .createDeployment()
		// .addClasspathResource(
		// "activiti/autodeployment/VacationRequest.bpmn20.xml")
		// .deploy().getId();

		// System.out.println(repositoryService.createDeploymentQuery().count());

		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put("employeeName", "Kermit");
		variables.put("numberOfDays", new Integer(4));
		variables.put("vacationMotivation", "I'm really tired!");

//		ProcessInstance processInstance = runtimeService
//				.startProcessInstanceByKey("vacationRequest", variables);

		List<Task> tasks = taskService.createTaskQuery().list();// .singleResult();
		// assertEquals("My Task", task.getName());

		for (Task task : tasks)

			//taskService.deleteTask(task.getId());
		taskService.complete(task.getId());
		// assertEquals(0, runtimeService.createProcessInstanceQuery().count());

	}

}