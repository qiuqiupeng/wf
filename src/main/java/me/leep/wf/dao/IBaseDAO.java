package me.leep.wf.dao;

import java.util.List;

import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.entity.system.Account;

/**
 * 所有dao的基类接口
 * 
 * @author 李鹏
 */

public interface IBaseDAO {
	/**
	 * 新增保存
	 */
	public void save(BaseEntiy entity);
	
	/**
	 * 新增保存
	 */
	public void addNew(BaseEntiy entity);

	/**
	 * 物理删除实体数据
	 */
	public void delete(BaseEntiy entity, Class<BaseEntiy> clazz);

	/**
	 * 修改保存实体数据
	 */
	public BaseEntiy update(BaseEntiy entity);

	/**
	 * 通过ID查找数据
	 * 
	 * @param id
	 * @return
	 */
	public BaseEntiy findById(String id, Class<BaseEntiy> clazz);

	/**
	 * 通过属性查找数据
	 */
	public List<BaseEntiy> findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount);

	
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
	public List<BaseEntiy> findAll(Class<BaseEntiy> clazz, int... rowStartIdxAndCount);
}