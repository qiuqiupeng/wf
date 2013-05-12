package me.leep.wf.dao;

import java.sql.Timestamp;
import java.util.List;

import me.leep.wf.entity.system.User;

/**
 * Interface for UserDAO.
 * 
 * @author MyEclipse Persistence Tools
 */

public interface IUserDAO {
	/**
	 * Perform an initial save of a previously unsaved User entity. All
	 * subsequent persist actions of this entity should use the #update()
	 * method. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#persist(Object)
	 * EntityManager#persist} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * IUserDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            User entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(User entity);

	/**
	 * Delete a persistent User entity. This operation must be performed within
	 * the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * IUserDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            User entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(User entity);

	/**
	 * Persist a previously saved User entity and return it or a copy of it to
	 * the sender. A copy of the User entity parameter is returned when the JPA
	 * persistence mechanism has not previously been tracking the updated
	 * entity. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#merge(Object) EntityManager#merge}
	 * operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * entity = IUserDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            User entity to update
	 * @return User the persisted User entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public User update(User entity);

	public User findById(String id);

	/**
	 * Find all User entities with a specific property value.
	 * 
	 * @param propertyName
	 *            the name of the User property to query
	 * @param value
	 *            the property value to match
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<User> found by query
	 */
	public List<User> findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount);

	public List<User> findByFagentUser(Object fagentUser,
			int... rowStartIdxAndCount);

	public List<User> findByFbackupemail(Object fbackupemail,
			int... rowStartIdxAndCount);

	public List<User> findByFcell(Object fcell, int... rowStartIdxAndCount);

	public List<User> findByFcontrolUnitid(Object fcontrolUnitid,
			int... rowStartIdxAndCount);

	public List<User> findByFcreatorid(Object fcreatorid,
			int... rowStartIdxAndCount);

	public List<User> findByFcustomerid(Object fcustomerid,
			int... rowStartIdxAndCount);

	public List<User> findByFdefOrgUnitid(Object fdefOrgUnitid,
			int... rowStartIdxAndCount);

	public List<User> findByFdefaultLocale(Object fdefaultLocale,
			int... rowStartIdxAndCount);

	public List<User> findByFdescriptionL1(Object fdescriptionL1,
			int... rowStartIdxAndCount);

	public List<User> findByFdescriptionL2(Object fdescriptionL2,
			int... rowStartIdxAndCount);

	public List<User> findByFdescriptionL3(Object fdescriptionL3,
			int... rowStartIdxAndCount);

	public List<User> findByFemail(Object femail, int... rowStartIdxAndCount);

	public List<User> findByFerrCount(Object ferrCount,
			int... rowStartIdxAndCount);

	public List<User> findByFforbidden(Object fforbidden,
			int... rowStartIdxAndCount);

	public List<User> findByFgroupid(Object fgroupid,
			int... rowStartIdxAndCount);

	public List<User> findByFhomePhone(Object fhomePhone,
			int... rowStartIdxAndCount);

	public List<User> findByFisBizAdmin(Object fisBizAdmin,
			int... rowStartIdxAndCount);

	public List<User> findByFisChangedpw(Object fisChangedpw,
			int... rowStartIdxAndCount);

	public List<User> findByFisDelete(Object fisDelete,
			int... rowStartIdxAndCount);

	public List<User> findByFisLocked(Object fisLocked,
			int... rowStartIdxAndCount);

	public List<User> findByFisRegister(Object fisRegister,
			int... rowStartIdxAndCount);

	public List<User> findByFlastUpdateUserid(Object flastUpdateUserid,
			int... rowStartIdxAndCount);

	public List<User> findByFloginAuthorWay(Object floginAuthorWay,
			int... rowStartIdxAndCount);

	public List<User> findByFmainRoleid(Object fmainRoleid,
			int... rowStartIdxAndCount);

	public List<User> findByFnameL1(Object fnameL1, int... rowStartIdxAndCount);

	public List<User> findByFnameL2(Object fnameL2, int... rowStartIdxAndCount);

	public List<User> findByFnameL3(Object fnameL3, int... rowStartIdxAndCount);

	public List<User> findByFnumber(Object fnumber, int... rowStartIdxAndCount);

	public List<User> findByFofficePhone(Object fofficePhone,
			int... rowStartIdxAndCount);

	public List<User> findByFpassword(Object fpassword,
			int... rowStartIdxAndCount);

	public List<User> findByFpersonId(Object fpersonId,
			int... rowStartIdxAndCount);

	public List<User> findByFpwdHisStr(Object fpwdHisStr,
			int... rowStartIdxAndCount);

	public List<User> findByFreferId(Object freferId,
			int... rowStartIdxAndCount);

	public List<User> findByFsecurityId(Object fsecurityId,
			int... rowStartIdxAndCount);

	public List<User> findByFsupplierid(Object fsupplierid,
			int... rowStartIdxAndCount);

	public List<User> findByFtype(Object ftype, int... rowStartIdxAndCount);

	/**
	 * Find all User entities.
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<User> all User entities
	 */
	public List<User> findAll(int... rowStartIdxAndCount);
}