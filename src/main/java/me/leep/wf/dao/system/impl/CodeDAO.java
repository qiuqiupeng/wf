package me.leep.wf.dao.system.impl;

import java.util.List;
import java.util.logging.Level;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import me.leep.wf.dao.EntityManagerHelper;
import me.leep.wf.dao.system.aware.ICodeDAO;
import me.leep.wf.entity.system.Code;
import me.leep.wf.entity.system.CodeId;

/**
 * A data access object (DAO) providing persistence and search support for Code
 * entities. Transaction control of the save(), update() and delete() operations
 * must be handled externally by senders of these methods or must be manually
 * added to each of these methods for data to be persisted to the JPA datastore.
 * 
 * @see me.leep.wf.entity.system.Code
 * @author MyEclipse Persistence Tools
 */
public class CodeDAO implements ICodeDAO {
	// property constants

	private EntityManager getEntityManager() {
		return EntityManagerHelper.getEntityManager();
	}

	/**
	 * Perform an initial save of a previously unsaved Code entity. All
	 * subsequent persist actions of this entity should use the #update()
	 * method. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#persist(Object)
	 * EntityManager#persist} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * CodeDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Code entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(Code entity) {
		EntityManagerHelper.log("saving Code instance", Level.INFO, null);
		try {
			getEntityManager().persist(entity);
			EntityManagerHelper.log("save successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("save failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Delete a persistent Code entity. This operation must be performed within
	 * the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * CodeDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Code entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(Code entity) {
		EntityManagerHelper.log("deleting Code instance", Level.INFO, null);
		try {
			entity = getEntityManager()
					.getReference(Code.class, entity.getId());
			getEntityManager().remove(entity);
			EntityManagerHelper.log("delete successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("delete failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Persist a previously saved Code entity and return it or a copy of it to
	 * the sender. A copy of the Code entity parameter is returned when the JPA
	 * persistence mechanism has not previously been tracking the updated
	 * entity. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#merge(Object) EntityManager#merge}
	 * operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * entity = CodeDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Code entity to update
	 * @return Code the persisted Code entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public Code update(Code entity) {
		EntityManagerHelper.log("updating Code instance", Level.INFO, null);
		try {
			Code result = getEntityManager().merge(entity);
			EntityManagerHelper.log("update successful", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("update failed", Level.SEVERE, re);
			throw re;
		}
	}

	public Code findById(CodeId id) {
		EntityManagerHelper.log("finding Code instance with id: " + id,
				Level.INFO, null);
		try {
			Code instance = getEntityManager().find(Code.class, id);
			return instance;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Find all Code entities with a specific property value.
	 * 
	 * @param propertyName
	 *            the name of the Code property to query
	 * @param value
	 *            the property value to match
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            number of results to return.
	 * @return List<Code> found by query
	 */
	@SuppressWarnings("unchecked")
	public List<Code> findByProperty(String propertyName, final Object value,
			final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding Code instance with property: "
				+ propertyName + ", value: " + value, Level.INFO, null);
		try {
			final String queryString = "select model from Code model where model."
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
	 * Find all Code entities.
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Code> all Code entities
	 */
	@SuppressWarnings("unchecked")
	public List<Code> findAll(final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding all Code instances", Level.INFO, null);
		try {
			final String queryString = "select model from Code model";
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

}