package me.leep.wf.test.dao;



import me.leep.wf.dao.IBaseDao;
import me.leep.wf.entity.system.UserBean;

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
public class BaseDaoTest {
	
	@Autowired
	IBaseDao<UserBean> dao;
	
	private static final Logger logger = Logger.getLogger( BaseDaoTest.class.getName() );

	@Test
	public void testCountAllUser() {
		
		long count = dao.count(UserBean.class);
		
//		assertEquals(34, count);
		
		logger.info("人数 " + count);
		
		
	}
	
	

}
