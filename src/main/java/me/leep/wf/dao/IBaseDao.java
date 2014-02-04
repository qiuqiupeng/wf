/*********************************************************************
 * 源代码版权归作者（们）所有
 *
 * 以 Apache License, Version 2.0 方式授权使用，具体参见：
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 ********************************************************************/
package me.leep.wf.dao;

import java.util.List;

import me.leep.wf.entity.BaseEntity;

/**
 * 全部dao的父类，数据访问对象的接口类，定义了增删改查等基本功能。
 * 
 * @author lipeng
 * 
 * @param <T>
 *            任意实体entity对象
 */
public interface IBaseDao<T extends BaseEntity> {

	/**
	 * 获取全部记录条数。
	 * @param domainClass
	 * @return 返回记录条数
	 */
	long count(Class<T> domainClass);

	/**
	 * 新增保存
	 */
	void addNew(T entity);

	/**
	 * 物理删除实体数据
	 */
	void delete(T entity);
	
	/**
	 * 新增保存
	 */
	void save(T entity);


	/**
	 * 修改保存实体数据
	 */
	T update(T entity);

	/**
	 * 通过ID查找数据
	 * 
	 * @param id
	 * @return 返回查找的实体
	 */
	T findById(String id, Class<T> clazz);

	/**
	 * 通过属性查找数据
	 */
	List<T> findByProperty(Class<T> clazz,
			String propertyName, Object value, int... rowStartIdxAndCount);

	/**
	 * 查找全部数据
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Account> all Account entities
	 */
	List<T> findAll(Class<T> clazz, String filterString,
			int... rowStartIdxAndCount);

}