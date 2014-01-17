package me.leep.wf.test.repo;

import me.leep.wf.repository.system.UserRepository;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;


@ContextConfiguration(locations={"classpath:spring_*_test.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
public class RepositoryTest {
	@Autowired
	private UserRepository userRepository;// 注入UserRepository
	
	private static final Logger logger = Logger.getLogger( RepositoryTest.class.getName() );

	@Test
	public void testCountAllUser() {
		long count = userRepository.count();
		
//		assertEquals(34, count);
		
		logger.info("人数 " + count);
		
		
	}
	
	

}
