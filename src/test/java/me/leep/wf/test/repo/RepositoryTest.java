package me.leep.wf.test.repo;

import me.leep.wf.repository.system.UserRepository;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class RepositoryTest extends AbstractRepoTest {
	@Autowired
	private UserRepository userRepository;// 需要测试的repo
	
	private static final Logger logger = Logger.getLogger( RepositoryTest.class.getName() );

	@Test
	public void testCountAllUser() {
		long count = userRepository.count();
		
//		assertEquals(34, count);
		
		logger.info("人数 " + count);
		
		
	}
	
//	@Test
//	public void testSaveUser() {
//		UserBean entity = new UserBean();
//		entity.setNumber("testtttt");
//		userRepository.save(entity);
//	}
//	

}
