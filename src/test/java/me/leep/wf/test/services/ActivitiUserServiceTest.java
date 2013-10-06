package me.leep.wf.test.services;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.transaction.TransactionManager;

import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IUserServices;

import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Picture;
import org.activiti.engine.identity.User;
import org.activiti.engine.impl.util.IoUtil;
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
	

	@Test
	public void testInsertUser() {

//	    	transactionManager.begin();//开启事务  
//	        identityService.saveUser(identityService.newUser("kermit"));  
//	        identityService.saveUser(identityService.newUser("gonzo"));    
//	        
//	        
//			org.activiti.engine.identity.User activitiUser = identityService.newUser("11111");
//			activitiUser.setFirstName("test");
//			identityService.saveUser(activitiUser);
//			
//	        transactionManager.commit();//提交事务  
	    	
//			System.out.println(identityService.createUserQuery().userId("1").count());
			
			initDemoUsers();
	        

//			assertNotNull("Person object is null but should not be.", activitiUser);
//			
//			logger.info("Person state is " + activitiUser);

		

		
		
	}
	
	protected void initDemoUsers() {
//	    createUser("kermit", "Kermit", "The Frog", "kermit", "kermit@activiti.org", 
//	            "org/activiti/explorer/images/kermit.jpg",
//	            Arrays.asList("management", "sales", "marketing", "engineering", "user", "admin"),
//	            Arrays.asList("birthDate", "10-10-1955", "jobTitle", "Muppet", "location", "Hollywoord",
//	                          "phone", "+123456789", "twitterName", "alfresco", "skype", "activiti_kermit_frog"));
//	    
//	    createUser("gonzo", "Gonzo", "The Great", "gonzo", "gonzo@activiti.org", 
//	            "org/activiti/explorer/images/gonzo.jpg",
//	            Arrays.asList("management", "sales", "marketing", "user"),
//	            null);
//	    createUser("fozzie", "Fozzie", "Bear", "fozzie", "fozzie@activiti.org", 
//	            "org/activiti/explorer/images/fozzie.jpg",
//	            Arrays.asList("marketing", "engineering", "user"),
//	            null);
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
		identityService.saveUser(identityService.newUser(UUID.randomUUID().toString()));
	  }

	
	protected void createUser(String userId, String firstName, String lastName, String password, 
	          String email, String imageResource, List<String> groups, List<String> userInfo) {
	    
	    if (identityService.createUserQuery().userId(userId).count() == 0) {
	      
	      // Following data can already be set by demo setup script
	      
	      User user = identityService.newUser(userId);
	      user.setFirstName(firstName);
	      user.setLastName(lastName);
	      user.setPassword(password);
	      user.setEmail(email);
	      identityService.saveUser(user);
	      
	      if (groups != null) {
	        for (String group : groups) {
	          identityService.createMembership(userId, group);
	        }
	      }
	    }
	    
	    // Following data is not set by demo setup script
	      
	    // image
//	    if (imageResource != null) {
//	      byte[] pictureBytes = IoUtil.readInputStream(this.getClass().getClassLoader().getResourceAsStream(imageResource), null);
//	      Picture picture = new Picture(pictureBytes, "image/jpeg");
//	      identityService.setUserPicture(userId, picture);
//	    }
	      
	    // user info
	    if (userInfo != null) {
	      for(int i=0; i<userInfo.size(); i+=2) {
	        identityService.setUserInfo(userId, userInfo.get(i), userInfo.get(i+1));
	      }
	    }
	    
	  }
}
