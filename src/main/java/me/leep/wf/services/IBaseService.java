package me.leep.wf.services;

import java.util.List;

import me.leep.wf.entity.BaseEntiy;

/**
 * 所有services的基类，实现基本的增删改查功能
 * 
 * @author 李鹏
 */

@SuppressWarnings("rawtypes")
public interface IBaseService {
	/**
	 * 保存实体
	 * 
	 * @param entity
	 *             entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(BaseEntiy entity);

	/**
	 * 删除实体
	 * 
	 * @param entity
	 *            entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(BaseEntiy entity, Class clazz);

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
	public BaseEntiy update(BaseEntiy entity);

	public BaseEntiy findById(String id, Class clazz);

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
	public List<BaseEntiy> findByProperty(Class clazz, String propertyName, Object value,
			int... rowStartIdxAndCount);

	/**
	 * 查找全部实体
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Account> all Account entities
	 */
	public List<BaseEntiy> findAll(Class clazz, int... rowStartIdxAndCount);
	
	public void deleteList(String[] rowids, Class clazz);
}