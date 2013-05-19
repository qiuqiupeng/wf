package me.leep.wf.dao.system.aware;

import java.util.List;

import me.leep.wf.entity.system.Code;
import me.leep.wf.entity.system.CodeId;

/**
 * Interface for CodeDAO.
 * 
 * @author MyEclipse Persistence Tools
 */

public interface ICodeDAO {
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
	 * ICodeDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Code entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(Code entity);

	/**
	 * Delete a persistent Code entity. This operation must be performed within
	 * the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * ICodeDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Code entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(Code entity);

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
	 * entity = ICodeDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Code entity to update
	 * @return Code the persisted Code entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public Code update(Code entity);

	public Code findById(CodeId id);

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
	 *            count of results to return.
	 * @return List<Code> found by query
	 */
	public List<Code> findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount);

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
	public List<Code> findAll(int... rowStartIdxAndCount);
}