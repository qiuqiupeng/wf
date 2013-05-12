package me.leep.wf.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import me.leep.wf.entity.system.User;

/**
 * A data access object (DAO) providing persistence and search support for User
 * entities. Transaction control of the save(), update() and delete() operations
 * must be handled externally by senders of these methods or must be manually
 * added to each of these methods for data to be persisted to the JPA datastore.
 * 
 * @see me.leep.wf.entity.system.User
 * @author MyEclipse Persistence Tools
 */
public class UserDAO implements IUserDAO {
	// property constants
	public static final String FAGENT_USER = "fagentUser";
	public static final String FBACKUPEMAIL = "fbackupemail";
	public static final String FCELL = "fcell";
	public static final String FCONTROL_UNITID = "fcontrolUnitid";
	public static final String FCREATORID = "fcreatorid";
	public static final String FCUSTOMERID = "fcustomerid";
	public static final String FDEF_ORG_UNITID = "fdefOrgUnitid";
	public static final String FDEFAULT_LOCALE = "fdefaultLocale";
	public static final String FDESCRIPTION_L1 = "fdescriptionL1";
	public static final String FDESCRIPTION_L2 = "fdescriptionL2";
	public static final String FDESCRIPTION_L3 = "fdescriptionL3";
	public static final String FEMAIL = "femail";
	public static final String FERR_COUNT = "ferrCount";
	public static final String FFORBIDDEN = "fforbidden";
	public static final String FGROUPID = "fgroupid";
	public static final String FHOME_PHONE = "fhomePhone";
	public static final String FIS_BIZ_ADMIN = "fisBizAdmin";
	public static final String FIS_CHANGEDPW = "fisChangedpw";
	public static final String FIS_DELETE = "fisDelete";
	public static final String FIS_LOCKED = "fisLocked";
	public static final String FIS_REGISTER = "fisRegister";
	public static final String FLAST_UPDATE_USERID = "flastUpdateUserid";
	public static final String FLOGIN_AUTHOR_WAY = "floginAuthorWay";
	public static final String FMAIN_ROLEID = "fmainRoleid";
	public static final String FNAME_L1 = "fnameL1";
	public static final String FNAME_L2 = "fnameL2";
	public static final String FNAME_L3 = "fnameL3";
	public static final String FNUMBER = "fnumber";
	public static final String FOFFICE_PHONE = "fofficePhone";
	public static final String FPASSWORD = "fpassword";
	public static final String FPERSON_ID = "fpersonId";
	public static final String FPWD_HIS_STR = "fpwdHisStr";
	public static final String FREFER_ID = "freferId";
	public static final String FSECURITY_ID = "fsecurityId";
	public static final String FSUPPLIERID = "fsupplierid";
	public static final String FTYPE = "ftype";

	private EntityManager getEntityManager() {
		return EntityManagerHelper.getEntityManager();
	}

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
	 * UserDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            User entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(User entity) {
		EntityManagerHelper.log("saving User instance", Level.INFO, null);
		try {
			getEntityManager().persist(entity);
			EntityManagerHelper.log("save successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("save failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Delete a persistent User entity. This operation must be performed within
	 * the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * UserDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            User entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(User entity) {
		EntityManagerHelper.log("deleting User instance", Level.INFO, null);
		try {
			entity = getEntityManager().getReference(User.class,
					entity.getFid());
			getEntityManager().remove(entity);
			EntityManagerHelper.log("delete successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("delete failed", Level.SEVERE, re);
			throw re;
		}
	}

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
	 * entity = UserDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            User entity to update
	 * @return User the persisted User entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public User update(User entity) {
		EntityManagerHelper.log("updating User instance", Level.INFO, null);
		try {
			User result = getEntityManager().merge(entity);
			EntityManagerHelper.log("update successful", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("update failed", Level.SEVERE, re);
			throw re;
		}
	}

	public User findById(String id) {
		EntityManagerHelper.log("finding User instance with id: " + id,
				Level.INFO, null);
		try {
			User instance = getEntityManager().find(User.class, id);
			return instance;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find failed", Level.SEVERE, re);
			throw re;
		}
	}

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
	 *            number of results to return.
	 * @return List<User> found by query
	 */
	@SuppressWarnings("unchecked")
	public List<User> findByProperty(String propertyName, final Object value,
			final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding User instance with property: "
				+ propertyName + ", value: " + value, Level.INFO, null);
		try {
			final String queryString = "select model from User model where model."
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

	public List<User> findByFagentUser(Object fagentUser,
			int... rowStartIdxAndCount) {
		return findByProperty(FAGENT_USER, fagentUser, rowStartIdxAndCount);
	}

	public List<User> findByFbackupemail(Object fbackupemail,
			int... rowStartIdxAndCount) {
		return findByProperty(FBACKUPEMAIL, fbackupemail, rowStartIdxAndCount);
	}

	public List<User> findByFcell(Object fcell, int... rowStartIdxAndCount) {
		return findByProperty(FCELL, fcell, rowStartIdxAndCount);
	}

	public List<User> findByFcontrolUnitid(Object fcontrolUnitid,
			int... rowStartIdxAndCount) {
		return findByProperty(FCONTROL_UNITID, fcontrolUnitid,
				rowStartIdxAndCount);
	}

	public List<User> findByFcreatorid(Object fcreatorid,
			int... rowStartIdxAndCount) {
		return findByProperty(FCREATORID, fcreatorid, rowStartIdxAndCount);
	}

	public List<User> findByFcustomerid(Object fcustomerid,
			int... rowStartIdxAndCount) {
		return findByProperty(FCUSTOMERID, fcustomerid, rowStartIdxAndCount);
	}

	public List<User> findByFdefOrgUnitid(Object fdefOrgUnitid,
			int... rowStartIdxAndCount) {
		return findByProperty(FDEF_ORG_UNITID, fdefOrgUnitid,
				rowStartIdxAndCount);
	}

	public List<User> findByFdefaultLocale(Object fdefaultLocale,
			int... rowStartIdxAndCount) {
		return findByProperty(FDEFAULT_LOCALE, fdefaultLocale,
				rowStartIdxAndCount);
	}

	public List<User> findByFdescriptionL1(Object fdescriptionL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FDESCRIPTION_L1, fdescriptionL1,
				rowStartIdxAndCount);
	}

	public List<User> findByFdescriptionL2(Object fdescriptionL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FDESCRIPTION_L2, fdescriptionL2,
				rowStartIdxAndCount);
	}

	public List<User> findByFdescriptionL3(Object fdescriptionL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FDESCRIPTION_L3, fdescriptionL3,
				rowStartIdxAndCount);
	}

	public List<User> findByFemail(Object femail, int... rowStartIdxAndCount) {
		return findByProperty(FEMAIL, femail, rowStartIdxAndCount);
	}

	public List<User> findByFerrCount(Object ferrCount,
			int... rowStartIdxAndCount) {
		return findByProperty(FERR_COUNT, ferrCount, rowStartIdxAndCount);
	}

	public List<User> findByFforbidden(Object fforbidden,
			int... rowStartIdxAndCount) {
		return findByProperty(FFORBIDDEN, fforbidden, rowStartIdxAndCount);
	}

	public List<User> findByFgroupid(Object fgroupid,
			int... rowStartIdxAndCount) {
		return findByProperty(FGROUPID, fgroupid, rowStartIdxAndCount);
	}

	public List<User> findByFhomePhone(Object fhomePhone,
			int... rowStartIdxAndCount) {
		return findByProperty(FHOME_PHONE, fhomePhone, rowStartIdxAndCount);
	}

	public List<User> findByFisBizAdmin(Object fisBizAdmin,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_BIZ_ADMIN, fisBizAdmin, rowStartIdxAndCount);
	}

	public List<User> findByFisChangedpw(Object fisChangedpw,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_CHANGEDPW, fisChangedpw, rowStartIdxAndCount);
	}

	public List<User> findByFisDelete(Object fisDelete,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_DELETE, fisDelete, rowStartIdxAndCount);
	}

	public List<User> findByFisLocked(Object fisLocked,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_LOCKED, fisLocked, rowStartIdxAndCount);
	}

	public List<User> findByFisRegister(Object fisRegister,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_REGISTER, fisRegister, rowStartIdxAndCount);
	}

	public List<User> findByFlastUpdateUserid(Object flastUpdateUserid,
			int... rowStartIdxAndCount) {
		return findByProperty(FLAST_UPDATE_USERID, flastUpdateUserid,
				rowStartIdxAndCount);
	}

	public List<User> findByFloginAuthorWay(Object floginAuthorWay,
			int... rowStartIdxAndCount) {
		return findByProperty(FLOGIN_AUTHOR_WAY, floginAuthorWay,
				rowStartIdxAndCount);
	}

	public List<User> findByFmainRoleid(Object fmainRoleid,
			int... rowStartIdxAndCount) {
		return findByProperty(FMAIN_ROLEID, fmainRoleid, rowStartIdxAndCount);
	}

	public List<User> findByFnameL1(Object fnameL1, int... rowStartIdxAndCount) {
		return findByProperty(FNAME_L1, fnameL1, rowStartIdxAndCount);
	}

	public List<User> findByFnameL2(Object fnameL2, int... rowStartIdxAndCount) {
		return findByProperty(FNAME_L2, fnameL2, rowStartIdxAndCount);
	}

	public List<User> findByFnameL3(Object fnameL3, int... rowStartIdxAndCount) {
		return findByProperty(FNAME_L3, fnameL3, rowStartIdxAndCount);
	}

	public List<User> findByFnumber(Object fnumber, int... rowStartIdxAndCount) {
		return findByProperty(FNUMBER, fnumber, rowStartIdxAndCount);
	}

	public List<User> findByFofficePhone(Object fofficePhone,
			int... rowStartIdxAndCount) {
		return findByProperty(FOFFICE_PHONE, fofficePhone, rowStartIdxAndCount);
	}

	public List<User> findByFpassword(Object fpassword,
			int... rowStartIdxAndCount) {
		return findByProperty(FPASSWORD, fpassword, rowStartIdxAndCount);
	}

	public List<User> findByFpersonId(Object fpersonId,
			int... rowStartIdxAndCount) {
		return findByProperty(FPERSON_ID, fpersonId, rowStartIdxAndCount);
	}

	public List<User> findByFpwdHisStr(Object fpwdHisStr,
			int... rowStartIdxAndCount) {
		return findByProperty(FPWD_HIS_STR, fpwdHisStr, rowStartIdxAndCount);
	}

	public List<User> findByFreferId(Object freferId,
			int... rowStartIdxAndCount) {
		return findByProperty(FREFER_ID, freferId, rowStartIdxAndCount);
	}

	public List<User> findByFsecurityId(Object fsecurityId,
			int... rowStartIdxAndCount) {
		return findByProperty(FSECURITY_ID, fsecurityId, rowStartIdxAndCount);
	}

	public List<User> findByFsupplierid(Object fsupplierid,
			int... rowStartIdxAndCount) {
		return findByProperty(FSUPPLIERID, fsupplierid, rowStartIdxAndCount);
	}

	public List<User> findByFtype(Object ftype, int... rowStartIdxAndCount) {
		return findByProperty(FTYPE, ftype, rowStartIdxAndCount);
	}

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
	@SuppressWarnings("unchecked")
	public List<User> findAll(final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding all User instances", Level.INFO, null);
		try {
			final String queryString = "select model from User model";
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