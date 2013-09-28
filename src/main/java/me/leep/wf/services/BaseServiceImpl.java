/**
 * 
 */
package me.leep.wf.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.leep.wf.dao.IBaseDAO;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.util.BeanUtil;

/**
 * @author 李鹏
 * 
 */

@SuppressWarnings({ "rawtypes", "unchecked" })
@Service("services")
public class BaseServiceImpl implements IBaseService {

	@Autowired
	IBaseDAO dao;

	@Override
	@Transactional
	public void save(BaseDto dto, Class clazz) {
		BaseEntiy bean = findById(dto.getId(), clazz);
		if (bean != null) {
			dto.setCreater(bean.getCreater());
			dto.setCreteTime(bean.getCreteTime());
		}
		BaseEntiy entity;
		try {
			entity = (BaseEntiy) Class.forName(clazz.getName()).newInstance();
			BeanUtil.copyBean(dto, entity);
			dao.update(entity);
		} catch (InstantiationException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

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

	@Override
	public BaseEntiy findById(String id, Class clazz) {
		return dao.findById(id, clazz);
	}

	@Override
	public List<BaseEntiy> findByProperty(Class clazz, String propertyName,
			Object value, int... rowStartIdxAndCount) {
		return dao.findByProperty(clazz, propertyName, value,
				rowStartIdxAndCount);
	}

	@Override
	public List<BaseDto> findAll(Class clazz, Class targetClass,
			int... rowStartIdxAndCount) {
		List<BaseEntiy> beanList = dao.findAll(clazz, rowStartIdxAndCount);
		List<BaseDto> result = new ArrayList<BaseDto>();
		for (int i = 0; i < beanList.size(); i++) {
			BaseEntiy bean = (BaseEntiy) beanList.get(i);
			BaseDto dto;
			try {
				dto = (BaseDto) targetClass.newInstance();
				BeanUtil.copyBean(bean, dto);
				result.add(dto);
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public void deleteList(String[] rowids, Class clazz) {
		for (int i = 0; i < rowids.length; i++) {
			BaseEntiy entity = dao.findById(rowids[i], clazz);
			dao.delete(entity, clazz);
		}
	}

	/**
	 * @return dao
	 */
	public IBaseDAO getDao() {
		return dao;
	}

	/**
	 * @param dao
	 *            要设置的 dao
	 */
	public void setDao(IBaseDAO dao) {
		this.dao = dao;
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see me.leep.wf.services.IBaseService#coutAll(java.lang.Class)
	 */
	@Override
	public int coutAll(Class clazz) {
		return dao.countAll(clazz);
	}

}
