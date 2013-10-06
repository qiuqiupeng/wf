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

import me.leep.wf.entity.BaseEntiy;
import me.leep.wf.util.LogUtil;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.orm.jpa.JpaTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	private EntityManagerFactory entityManagerFactory;
	@PersistenceContext(unitName="wf")
	private EntityManager entityManager;
	
	public JpaTemplate getJpaTemplate() {
		return new JpaTemplate(getEntityManager());
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
	public void save(BaseEntiy entity) {
		LogUtil.log(">>>>>>保存实体>>>>>>", Level.INFO, null);
		try {
			EntityTransaction et = getEntityManager().getTransaction();
			et.begin();
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
			getEntityManager().persist(entity);
			et.commit();
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
	public void delete(BaseEntiy entity, Class<BaseEntiy> clazz) {
		LogUtil.log(">>>>>>删除实体>>>>>>", Level.INFO, null);
		try {
			EntityTransaction et = getEntityManager().getTransaction();
			et.begin();
			entity = getEntityManager().getReference(clazz, entity.getId());
			getEntityManager().remove(entity);
			et.commit();
			LogUtil.log(">>>>>>删除成功>>>>>>", Level.INFO, null);
		} catch (RuntimeException re) {
			LogUtil.log(">>>>>>删除失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
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
	@Transactional
	public BaseEntiy update(BaseEntiy entity) {
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
			BaseEntiy result = getEntityManager().merge(entity);
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
	public BaseEntiy findById(String id, Class<BaseEntiy> clazz) {
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
	public List<BaseEntiy> findByProperty(Class<BaseEntiy> clazz,
			String propertyName, final Object value,
			final int... rowStartIdxAndCount) {
		LogUtil.log("finding instance with property: "
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
			LogUtil.log("find by property name failed",
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
	public List<BaseEntiy> findAll(Class<BaseEntiy> clazz, String filterString,
			final int... rowStartIdxAndCount) {
		LogUtil.log("查找全部实体", Level.INFO, null);
		try {
			String queryString = "";
			if (StringUtils.isBlank(filterString)) {
				queryString = "select model from " + clazz.getName()
						+ " model";
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

	/**
	 * @see me.leep.wf.dao.IBaseDAO#addNew(me.leep.wf.entity.BaseEntiy)
	 */
	@Override
	public void addNew(BaseEntiy entity) {
		// TODO 自动生成的方法存根
		getJpaTemplate().persist(entity);
	}

	@SuppressWarnings({ "rawtypes" })
	public int countAll(Class clazz) {
		LogUtil.log("获取总记录条数", Level.INFO, null);
		String COUNT_ALL_JPAQL = "select count(*) from " + clazz.getName();
		Number count = (Number) getJpaTemplate()
				.find(COUNT_ALL_JPAQL).get(0);
		return count.intValue();
	}

	/**
	 * @return entityManagerFactory
	 */
	public EntityManagerFactory getEntityManagerFactory() {
		return entityManagerFactory;
	}

	/**
	 * @param entityManagerFactory 要设置的 entityManagerFactory
	 */
	public void setEntityManagerFactory(EntityManagerFactory entityManagerFactory) {
		this.entityManagerFactory = entityManagerFactory;
	}

	/**
	 * @return entityManager
	 */
	public EntityManager getEntityManager() {
		return entityManager;
	}

	/**
	 * @param entityManager 要设置的 entityManager
	 */
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}