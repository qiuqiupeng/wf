/*********************************************************************
 * 源代码版权归作者（们）所有
 *
 * 以 Apache License, Version 2.0 方式授权使用，具体参见：
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 ********************************************************************/
package me.leep.wf.dao;

import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import me.leep.wf.entity.BaseEntity;
import me.leep.wf.util.LogUtil;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.query.QueryUtils;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

/**
 * 数据访问对象的实现基类，实现了增删改查等基本功能。
 * 
 * @author 李鹏
 */
@Repository("dao")
public class BaseDaoImpl<T extends BaseEntity> implements IBaseDao<T> {
	// property constants
	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@PersistenceContext
	private EntityManager entityManager;
	

	public long count(Class<T> domainClass) {
		LogUtil.log("获取总记录条数", Level.INFO, null);		
		String replacement = domainClass.getName();
		String COUNT_ALL_JPAQL = String.format(QueryUtils.COUNT_QUERY_STRING,
				"x", replacement);
		long count = entityManager.createQuery(COUNT_ALL_JPAQL, Long.class)
				.getSingleResult();
		return count;
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
	 * LogUtil.beginTransaction();
	 * AccountDAO.save(entity);
	 * LogUtil.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Account entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(T entity) {
		LogUtil.log(">>>>>>保存实体>>>>>>", Level.INFO, null);
		try {
			EntityManager em = entityManagerFactory.createEntityManager();
			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.persist(entity);
			tx.commit();
			LogUtil.log(">>>>>>保存成功>>>>>>", Level.INFO, null);
		} catch (RuntimeException re) {
			LogUtil.log(">>>>>>保存失败>>>>>>", Level.SEVERE, re);
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
	 * LogUtil.beginTransaction();
	 * AccountDAO.delete(entity);
	 * LogUtil.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Account entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(T entity) {
		LogUtil.log(">>>>>>删除实体>>>>>>", Level.INFO, null);
		Assert.notNull(entity, "实体不能是空的");
		entityManager.remove(entityManager.contains(entity) ? entity
				: entityManager.merge(entity));

	}

	/**
	 * 保存或修改实体类
	 * 
	 * <pre>
	 * LogUtil.beginTransaction();
	 * entity = AccountDAO.update(entity);
	 * LogUtil.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            entity to update
	 * @return Account the persisted entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public T update(T entity) {
		LogUtil.log(">>>>>>>修改实体>>>>>>", Level.INFO, null);
		try {
			String user = SecurityUtils.getSubject().getPrincipal().toString();
			if (StringUtils.isEmpty(entity.getCreater()))
				entity.setCreater(user);
			entity.setLastUpdater(user);
			if (entity.getCreteTime() == null) {
				entity.setCreteTime(new Date());
			}
			entity.setLastUpdateTime(new Date());
			if (StringUtils.isEmpty(entity.getId()))
				entity.setId(UUID.randomUUID().toString());
			T result = getEntityManager().merge(entity);
			LogUtil.log(">>>>>>修改成功>>>>>>", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			LogUtil.log(">>>>>>修改失败>>>>>>", Level.SEVERE, re);
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
	public T findById(String id, Class<T> clazz) {
		LogUtil.log(">>>>>>通过ID：" + id + "查找实体", Level.INFO, null);
		try {
			return getEntityManager().find(clazz, id);
		} catch (RuntimeException re) {
			LogUtil.log(">>>>>>查找失败>>>>>>", Level.SEVERE, re);
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
	public List<T> findByProperty(Class<T> clazz, String propertyName,
			final Object value, final int... rowStartIdxAndCount) {
		LogUtil.log("finding instance with property: " + propertyName
				+ ", value: " + value, Level.INFO, null);
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
			LogUtil.log("find by property name failed", Level.SEVERE, re);
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
	public List<T> findAll(Class<T> clazz, String filterString,
			final int... rowStartIdxAndCount) {
		LogUtil.log("查找全部实体", Level.INFO, null);
		try {
			String queryString = "";
			if (StringUtils.isBlank(filterString)) {
				queryString = "select model from " + clazz.getName() + " model";
			} else {
				queryString = "select model from " + clazz.getName()
						+ " model where 1=1 " + filterString;
			}

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
			LogUtil.log("查找全部实体失败", Level.SEVERE, re);
			throw re;
		}
	}

	@Override
	public void addNew(T entity) {
		entityManager.persist(entity);
	}

	/**
	 * @return entityManagerFactory
	 */
	public EntityManagerFactory getEntityManagerFactory() {
		return entityManagerFactory;
	}

	/**
	 * @param entityManagerFactory
	 *            要设置的 entityManagerFactory
	 */
	public void setEntityManagerFactory(
			EntityManagerFactory entityManagerFactory) {
		this.entityManagerFactory = entityManagerFactory;
	}

	/**
	 * @return entityManager
	 */
	public EntityManager getEntityManager() {
		return entityManager;
	}

	/**
	 * @param entityManager
	 *            要设置的 entityManager
	 */
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
