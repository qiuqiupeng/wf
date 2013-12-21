/**
 * 
 */
package me.leep.wf.services;


import org.springframework.stereotype.Service;

/**
 * @author 李鹏
 * @param <V>
 * @param <P>
 * 
 */
@Service("services")
public class BaseServiceImpl<V, P> implements IBaseService<V, P> {

//	@Autowired
//	IBaseDAO dao;

//	public void save(BaseDto dto, Class clazz) {
//		BaseEntiy bean;
//		if (dto.getId() != null)
//			bean = findById(dto.getId(), clazz);
//		else
//			bean = null;
//		if (bean != null) {
//			dto.setCreater(bean.getCreater());
//			dto.setCreteTime(bean.getCreteTime());
//		}
//		BaseEntiy entity;
//		try {
//			entity = (BaseEntiy) Class.forName(clazz.getName()).newInstance();
//			BeanUtil.copyBean(dto, entity);
//			dao.update(entity);
//		} catch (InstantiationException e) {
//			e.printStackTrace();
//		} catch (IllegalAccessException e) {
//			e.printStackTrace();
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}

//	public void delete(BaseEntiy entity, Class clazz) {
//		dao.delete(entity, clazz);
//
//	}
//
//	public BaseEntiy update(BaseEntiy entity) {
//		return dao.update(entity);
//	}

//	public BaseEntiy findById(String id, Class clazz) {
//		return dao.findById(id, clazz);
//	}

//	public List<BaseEntiy> findByProperty(Class clazz, String propertyName,
//			Object value, int... rowStartIdxAndCount) {
//		return dao.findByProperty(clazz, propertyName, value,
//				rowStartIdxAndCount);
//	}

//	public List<BaseDto> findAll(Class clazz, Class targetClass,String filterString,
//			int... rowStartIdxAndCount) {
//		List<BaseEntiy> beanList = dao.findAll(clazz, filterString, rowStartIdxAndCount);
//		List<BaseDto> result = new ArrayList<BaseDto>();
//		for (int i = 0; i < beanList.size(); i++) {
//			BaseEntiy bean = (BaseEntiy) beanList.get(i);
//			BaseDto dto;
//			try {
//				dto = (BaseDto) targetClass.newInstance();
//				BeanUtil.copyBean(bean, dto);
//				result.add(dto);
//			} catch (InstantiationException e) {
//				e.printStackTrace();
//			} catch (IllegalAccessException e) {
//				e.printStackTrace();
//			}
//		}
//		return result;
//	}

//	public void deleteList(String[] rowids, Class clazz) {
//		for (int i = 0; i < rowids.length; i++) {
//			BaseEntiy entity = dao.findById(rowids[i], clazz);
//			dao.delete(entity, clazz);
//		}
//	}

//	/**
//	 * @return dao
//	 */
//	public IBaseDAO getDao() {
//		return dao;
//	}
//
//	/**
//	 * @param dao
//	 *            要设置的 dao
//	 */
//	public void setDao(IBaseDAO dao) {
//		this.dao = dao;
//	}

	
//	public int coutAll(Class clazz) {
//		return dao.countAll(clazz);
//	}


	

}
