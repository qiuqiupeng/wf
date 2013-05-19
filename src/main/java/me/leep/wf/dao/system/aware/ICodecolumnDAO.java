package me.leep.wf.dao.system.aware;

import java.util.List;

import me.leep.wf.entity.system.Codecolumn;
import me.leep.wf.entity.system.CodecolumnId;

/**
 * Interface for CodecolumnDAO.
 * 
 * @author MyEclipse Persistence Tools
 */

public interface ICodecolumnDAO {
	/**
	 * Perform an initial save of a previously unsaved Codecolumn entity. All
	 * subsequent persist actions of this entity should use the #update()
	 * method. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#persist(Object)
	 * EntityManager#persist} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * ICodecolumnDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Codecolumn entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(Codecolumn entity);

	/**
	 * Delete a persistent Codecolumn entity. This operation must be performed
	 * within the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * ICodecolumnDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Codecolumn entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(Codecolumn entity);

	/**
	 * Persist a previously saved Codecolumn entity and return it or a copy of
	 * it to the sender. A copy of the Codecolumn entity parameter is returned
	 * when the JPA persistence mechanism has not previously been tracking the
	 * updated entity. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#merge(Object) EntityManager#merge}
	 * operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * entity = ICodecolumnDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Codecolumn entity to update
	 * @return Codecolumn the persisted Codecolumn entity instance, may not be
	 *         the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public Codecolumn update(Codecolumn entity);

	public Codecolumn findById(CodecolumnId id);

	/**
	 * Find all Codecolumn entities with a specific property value.
	 * 
	 * @param propertyName
	 *            the name of the Codecolumn property to query
	 * @param value
	 *            the property value to match
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Codecolumn> found by query
	 */
	public List<Codecolumn> findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount);

	/**
	 * Find all Codecolumn entities.
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Codecolumn> all Codecolumn entities
	 */
	public List<Codecolumn> findAll(int... rowStartIdxAndCount);
}