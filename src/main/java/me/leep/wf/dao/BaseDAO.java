package me.leep.wf.dao;

import java.util.List;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import me.leep.wf.dao.EntityManagerHelper;
import me.leep.wf.entity.BaseEntiy;

/**
 * A data access object (DAO) providing persistence and search support for
 * Account entities. Transaction control of the save(), update() and delete()
 * operations must be handled externally by senders of these methods or must be
 * manually added to each of these methods for data to be persisted to the JPA
 * datastore.
 * 
 * @see me.leep.wf.entity.system.Account
 * @author MyEclipse Persistence Tools
 */
@Repository("BaseDAO")
public class BaseDAO implements IBaseDAO {
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
			getEntityManager().persist(entity);
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
			entity = getEntityManager().getReference(clazz,
					entity.getId());
			getEntityManager().remove(entity);
			EntityManagerHelper.log(">>>>>>删除成功>>>>>>", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log(">>>>>>删除失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Persist a previously saved Account entity and return it or a copy of it
	 * to the sender. A copy of the Account entity parameter is returned when
	 * the JPA persistence mechanism has not previously been tracking the
	 * updated entity. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#merge(Object) EntityManager#merge}
	 * operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * entity = AccountDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Account entity to update
	 * @return Account the persisted Account entity instance, may not be the
	 *         same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public BaseEntiy update(BaseEntiy entity) {
		EntityManagerHelper.log(">>>>>>>修改实体>>>>>>", Level.INFO, null);
		try {
			BaseEntiy result = getEntityManager().merge(entity);
			EntityManagerHelper.log(">>>>>>修改成功>>>>>>", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			EntityManagerHelper.log(">>>>>>修改失败>>>>>>", Level.SEVERE, re);
			throw re;
		}
	}

	public BaseEntiy findById(String id, Class<BaseEntiy> clazz) {
		EntityManagerHelper.log(">>>>>>通过ID：" + id + "查找实体",
				Level.INFO, null);
		try {
			return getEntityManager().find(clazz, id);
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
	public List<BaseEntiy> findByProperty(String propertyName,
			final Object value, final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding Account instance with property: "
				+ propertyName + ", value: " + value, Level.INFO, null);
		try {
			final String queryString = "select model from Account model where model."
					+ propertyName + "= :propertyValue";
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
	 * Find all Account entities.
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Account> all Account entities
	 */
	@SuppressWarnings("unchecked")
	public List<BaseEntiy> findAll(final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding all Account instances", Level.INFO,
				null);
		try {
			final String queryString = "select model from Account model";
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
		save(entity);
	}

}