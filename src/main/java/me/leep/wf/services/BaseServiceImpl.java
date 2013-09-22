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

	@Override
	@Transactional
	public void save(BaseEntiy entity) {
		dao.save(entity);
	}


	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	@Transactional
	public void delete(BaseEntiy entity, Class clazz) {
		dao.delete(entity, clazz);

	}

	@Override
	@Transactional
	public BaseEntiy update(BaseEntiy entity) {
		return dao.update(entity);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public BaseEntiy findById(String id, Class clazz) {
		return dao.findById(id, clazz);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<BaseEntiy> findByProperty(Class clazz, String propertyName, Object value,
			int... rowStartIdxAndCount) {
		return dao.findByProperty(clazz, propertyName, value, rowStartIdxAndCount);
	}


	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<BaseEntiy> findAll(Class clazz, int... rowStartIdxAndCount) {
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
