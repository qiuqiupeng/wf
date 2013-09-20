/**
 * 
 */
package me.leep.wf.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.leep.wf.dao.IBaseDAO;
import me.leep.wf.entity.BaseEntiy;

/**
 * @author 李鹏
 *
 */
@Service("BaseServiceImpl")
public class BaseServiceImpl implements IBaseService {
	
	@Autowired
	IBaseDAO dao ;

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#save(me.leep.wf.entity.system.Account)
	 */
	@Override
	@Transactional
	public void save(BaseEntiy entity) {
		// TODO Auto-generated method stub
		dao.save(entity);
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#delete(me.leep.wf.entity.system.Account)
	 */
	@Override
	@Transactional
	public void delete(BaseEntiy entity, Class<BaseEntiy> clazz) {
		// TODO Auto-generated method stub
		dao.delete(entity, clazz);

	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#update(me.leep.wf.entity.system.Account)
	 */
	@Override
	@Transactional
	public BaseEntiy update(BaseEntiy entity) {
		// TODO Auto-generated method stub
		return dao.update(entity);
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findById(java.lang.String)
	 */
	@Override
	public BaseEntiy findById(String id, Class clazz) {
		// TODO Auto-generated method stub
		return dao.findById(id, clazz);
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByProperty(java.lang.String, java.lang.Object, int[])
	 */
	@Override
	public List findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return dao.findByProperty(propertyName, value, rowStartIdxAndCount);
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findAll(int[])
	 */
	@Override
	public List findAll(Class clazz, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return dao.findAll(clazz, rowStartIdxAndCount);
	}

	/**
	 * @return dao
	 */
	public IBaseDAO getDao() {
		return dao;
	}

	/**
	 * @param dao 要设置的 dao
	 */
	public void setDao(IBaseDAO dao) {
		this.dao = dao;
	}




}
