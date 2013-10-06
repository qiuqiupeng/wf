package me.leep.wf.test.services;

import static org.junit.Assert.*;

import javax.transaction.TransactionManager;

import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;

import org.activiti.engine.IdentityService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@ContextConfiguration(locations={"classpath:spring_*_test.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class ActivitiUserServiceTest {
	
	private static final Logger logger = Logger.getLogger(ActivitiUserServiceTest.class.getName() );
	

	@Autowired
	private IdentityService identityService;
	
	@Autowired
	private TransactionManager transactionManager;

	@Test
	public void testInsertUser() {
	    try  
	    {  
	    	transactionManager.begin();//开启事务  
	        identityService.saveUser(identityService.newUser("kermit"));  
	        identityService.saveUser(identityService.newUser("gonzo"));    
	        
	        
			org.activiti.engine.identity.User activitiUser = identityService.newUser("11111");
			activitiUser.setFirstName("test");
			identityService.saveUser(activitiUser);
			
	        transactionManager.commit();//提交事务  
	        

			assertNotNull("Person object is null but should not be.", activitiUser);
			
			logger.info("Person state is " + activitiUser);
	    }  
	    catch(Throwable e)  
	    {  
	        try {  
	        	transactionManager.rollback();//回滚事务  
	        } catch (Exception e1) {  
	            // TODO Auto-generated catch block  
	            e1.printStackTrace();  
	        }  
	    } 
		

		
		
	}

}
