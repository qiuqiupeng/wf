/*********************************************************************
 * 源代码版权归作者（们）所有
 *
 * 以 Apache License, Version 2.0 方式授权使用，具体参见：
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 ********************************************************************/
package me.leep.wf.services;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.entity.BaseEntity;



/**
 * 所有services的基类，实现基本的增删改查功能
 * 
 * @author 李鹏
 */
public interface IBaseService<V extends BaseDto, P extends BaseEntity> {
	/**
	 * 保存实体
	 * 
	 * @param entity
	 *             entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
//	public void save(BaseDto dto, Class clazz);

	/**
	 * 删除实体
	 * 
	 * @param entity
	 *            entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
//	public void delete(BaseEntiy entity, Class clazz);

	/**
	 * 修改实体
	 * 
	 * @param entity
	 *             entity to update
	 * @return the persisted entity instance, may not be the
	 *         same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
//	public BaseEntiy update(BaseEntiy entity);

//	public BaseEntiy findById(String id, Class clazz);

	/**
	 * 按照某个属性查找全部
	 * 
	 * @param propertyName
	 *            the name of the  property to query
	 * @param value
	 *            the property value to match
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<BaseEntiy> found by query
	 */
//	public List<BaseEntiy> findByProperty(Class clazz, String propertyName, Object value,
//			int... rowStartIdxAndCount);

	/**
	 * 查找全部实体
	 * 
	 * @param clazz 数据来源from实体对象类
	 * @param targetClass 结果类
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List 返回全部结果集
	 */
//	public List<BaseDto> findAll(Class clazz,Class targetClass,String filterString, int... rowStartIdxAndCount);
	
//	public void deleteList(String[] rowids, Class clazz);
	
	
//	public int coutAll(Class clazz);

}