package me.leep.wf.test.dao;



import java.util.List;

import me.leep.wf.dao.IBaseDao;

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
	IBaseDao dao;
	
	private static final Logger logger = Logger.getLogger( BaseDaoTest.class.getName() );

//	@Test
//	public void testCountAllUser() {
//		
//		long count = dao.count(UserBean.class);
//		
//		assertEquals(34, count);
//		
//		logger.info("人数 " + count);
//		
//		
//	}
//	
//	@Test
//	public void testfindUserById() {
//		
//		UserBean user = dao.findOneById(UserBean.class, "034a28d1-7f21-4925-9160-cf16303943ce");
//		
//		assertEquals(34, count);
//		
//		logger.info("人数 " + user);
//		
//		
//	}
	
	@Test
	public void testQuery() {
		String sql = "select o from UserBean o where o.number = 'admin'";
		List<?> list = dao.query(sql);
		logger.info("人数 " + list.size());
	}
	
	

}
