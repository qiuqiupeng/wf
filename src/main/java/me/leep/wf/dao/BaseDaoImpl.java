package me.leep.wf.dao;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Repository;

import me.leep.wf.dao.EntityManagerHelper;
import me.leep.wf.entity.BaseEntiy;

/**
 * 数据访问对象的实现基类，实现了增删改查等基本功能。
 * 
 * @see me.leep.wf.entity.BaseDaoImpl
 * @author 李鹏
 */
@SuppressWarnings("deprecation")
@Repository("dao")
public class BaseDaoImpl implements IBaseDAO {
	// property constants

	private EntityManager getEntityManager() {
		return EntityManagerHelper.getEntityManager();
	}
	

	/**
	 * Perform an initial save of a previously unsaved Account entity. All
	 * subsequent persist actions of this entity should use the #update()
	 * method. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#persist(Object)
	 * EntityManager#persist} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * AccountDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Account entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(BaseEntiy entity) {
		EntityManagerHelper.log(">>>>>>保存实体>>>>>>", Level.INFO, null);
		try {
			EntityTransaction et = getEntityManager().getTransaction();
			et.begin();
			getEntityManager().persist(entity);
			et.commit();
			EntityManagerHelper.log(">>>>>>保存成功>>>>>>", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log(">>>>>>保存失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Delete a persistent Account entity. This operation must be performed
	 * within the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * AccountDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Account entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(BaseEntiy entity, Class<BaseEntiy> clazz) {
		EntityManagerHelper.log(">>>>>>删除实体>>>>>>", Level.INFO, null);
		try {
			EntityTransaction et = getEntityManager().getTransaction();
			et.begin();
			entity = getEntityManager().getReference(clazz, entity.getId());
			getEntityManager().remove(entity);
			et.commit();
			EntityManagerHelper.log(">>>>>>删除成功>>>>>>", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log(">>>>>>删除失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * 保存或修改实体类
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * entity = AccountDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            entity to update
	 * @return Account the persisted entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public BaseEntiy update(BaseEntiy entity) {
		EntityManagerHelper.log(">>>>>>>修改实体>>>>>>", Level.INFO, null);
		try {
			EntityManagerHelper.beginTransaction();
			entity.setLastUpdateTime(new Date());
			entity.setLastUpdater(SecurityUtils.getSubject().getPrincipal()
					.toString());
			BaseEntiy result = getEntityManager().merge(entity);
			EntityManagerHelper.commit();
			EntityManagerHelper.log(">>>>>>修改成功>>>>>>", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			EntityManagerHelper.log(">>>>>>修改失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * 通过id查找实体对象。
	 * 
	 * @param id
	 *            id
	 * @param clazz
	 *            实体类
	 * 
	 * @return 实体类
	 */
	public BaseEntiy findById(String id, Class<BaseEntiy> clazz) {
		EntityManagerHelper.log(">>>>>>通过ID：" + id + "查找实体", Level.INFO, null);
		try {
//			return getEntityManager().find(clazz, id);
			return EntityManagerHelper.getJpaTemplate().find(clazz, id);
		} catch (RuntimeException re) {
			EntityManagerHelper.log(">>>>>>查找失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Find all Account entities with a specific property value.
	 * 
	 * @param propertyName
	 *            the name of the Account property to query
	 * @param value
	 *            the property value to match
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            number of results to return.
	 * @return List<Account> found by query
	 */
	@SuppressWarnings("unchecked")
	public List<BaseEntiy> findByProperty(Class<BaseEntiy> clazz,
			String propertyName, final Object value,
			final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding instance with property: "
				+ propertyName + ", value: " + value, Level.INFO, null);
		try {
			final String queryString = "select model from " + clazz.getName()
					+ " model where model." + propertyName + "= :propertyValue";
			Query query = getEntityManager().createQuery(queryString);
			query.setParameter("propertyValue", value);
			if (rowStartIdxAndCount != null && rowStartIdxAndCount.length > 0) {
				int rowStartIdx = Math.max(0, rowStartIdxAndCount[0]);
				if (rowStartIdx > 0) {
					query.setFirstResult(rowStartIdx);
				}

				if (rowStartIdxAndCount.length > 1) {
					int rowCount = Math.max(0, rowStartIdxAndCount[1]);
					if (rowCount > 0) {
						query.setMaxResults(rowCount);
					}
				}
			}
			return query.getResultList();
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find by property name failed",
					Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Find all entities.
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Account> all Account entities
	 */
	@SuppressWarnings("unchecked")
	public List<BaseEntiy> findAll(Class<BaseEntiy> clazz,
			final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding all instances", Level.INFO,
				null);
		try {
			final String queryString = "select model from " + clazz.getName()
					+ " model";
			Query query = getEntityManager().createQuery(queryString);
			if (rowStartIdxAndCount != null && rowStartIdxAndCount.length > 0) {
				int rowStartIdx = Math.max(0, rowStartIdxAndCount[0]);
				if (rowStartIdx > 0) {
					query.setFirstResult(rowStartIdx);
				}

				if (rowStartIdxAndCount.length > 1) {
					int rowCount = Math.max(0, rowStartIdxAndCount[1]);
					if (rowCount > 0) {
						query.setMaxResults(rowCount);
					}
				}
			}
			return query.getResultList();
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find all failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * @see me.leep.wf.dao.IBaseDAO#addNew(me.leep.wf.entity.BaseEntiy)
	 */
	@Override
	public void addNew(BaseEntiy entity) {
		// TODO 自动生成的方法存根
//		save(entity);
		EntityManagerHelper.getJpaTemplate().persist(entity);
	}
	
	@SuppressWarnings({ "rawtypes"})
	public int countAll(Class clazz) {  
		String COUNT_ALL_JPAQL = "select count(*) from " + clazz.getName();
        Number count =  
           (Number) EntityManagerHelper.getJpaTemplate().find(COUNT_ALL_JPAQL).get(0);  
        return count.intValue();  
    }


}