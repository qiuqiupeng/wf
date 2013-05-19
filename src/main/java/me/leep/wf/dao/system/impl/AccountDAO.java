package me.leep.wf.dao.system.impl;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import me.leep.wf.dao.EntityManagerHelper;
import me.leep.wf.dao.system.aware.IAccountDAO;
import me.leep.wf.entity.system.Account;

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
public class AccountDAO implements IAccountDAO {
	// property constants
	public static final String NAME = "name";
	public static final String PASSWORD = "password";
	public static final String PAY_PASSWORD = "payPassword";
	public static final String PW_ANSWER = "pwAnswer";
	public static final String PW_QUESTION = "pwQuestion";
	public static final String MEMBER_ID = "memberId";
	public static final String NICK_NAME = "nickName";
	public static final String CONFIG = "config";
	public static final String FAVORITE = "favorite";
	public static final String LAST_LOGIN_IP = "lastLoginIp";
	public static final String LOGIN_COUNT = "loginCount";
	public static final String STATUS = "status";
	public static final String REMARK = "remark";
	public static final String UPDATER = "updater";
	public static final String CREATOR = "creator";
	public static final String REMOVE_TAG = "removeTag";
	public static final String SORT_ID = "sortId";
	public static final String PINYIN = "pinyin";

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
	public void save(Account entity) {
		EntityManagerHelper.log("saving Account instance", Level.INFO, null);
		try {
			getEntityManager().persist(entity);
			EntityManagerHelper.log("save successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("save failed", Level.SEVERE, re);
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
	public void delete(Account entity) {
		EntityManagerHelper.log("deleting Account instance", Level.INFO, null);
		try {
			entity = getEntityManager().getReference(Account.class,
					entity.getAccountId());
			getEntityManager().remove(entity);
			EntityManagerHelper.log("delete successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("delete failed", Level.SEVERE, re);
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
	public Account update(Account entity) {
		EntityManagerHelper.log("updating Account instance", Level.INFO, null);
		try {
			Account result = getEntityManager().merge(entity);
			EntityManagerHelper.log("update successful", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("update failed", Level.SEVERE, re);
			throw re;
		}
	}

	public Account findById(String id) {
		EntityManagerHelper.log("finding Account instance with id: " + id,
				Level.INFO, null);
		try {
			Account instance = getEntityManager().find(Account.class, id);
			return instance;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find failed", Level.SEVERE, re);
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
	public List<Account> findByProperty(String propertyName,
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

	public List<Account> findByName(Object name, int... rowStartIdxAndCount) {
		return findByProperty(NAME, name, rowStartIdxAndCount);
	}

	public List<Account> findByPassword(Object password,
			int... rowStartIdxAndCount) {
		return findByProperty(PASSWORD, password, rowStartIdxAndCount);
	}

	public List<Account> findByPayPassword(Object payPassword,
			int... rowStartIdxAndCount) {
		return findByProperty(PAY_PASSWORD, payPassword, rowStartIdxAndCount);
	}

	public List<Account> findByPwAnswer(Object pwAnswer,
			int... rowStartIdxAndCount) {
		return findByProperty(PW_ANSWER, pwAnswer, rowStartIdxAndCount);
	}

	public List<Account> findByPwQuestion(Object pwQuestion,
			int... rowStartIdxAndCount) {
		return findByProperty(PW_QUESTION, pwQuestion, rowStartIdxAndCount);
	}

	public List<Account> findByMemberId(Object memberId,
			int... rowStartIdxAndCount) {
		return findByProperty(MEMBER_ID, memberId, rowStartIdxAndCount);
	}

	public List<Account> findByNickName(Object nickName,
			int... rowStartIdxAndCount) {
		return findByProperty(NICK_NAME, nickName, rowStartIdxAndCount);
	}

	public List<Account> findByConfig(Object config, int... rowStartIdxAndCount) {
		return findByProperty(CONFIG, config, rowStartIdxAndCount);
	}

	public List<Account> findByFavorite(Object favorite,
			int... rowStartIdxAndCount) {
		return findByProperty(FAVORITE, favorite, rowStartIdxAndCount);
	}

	public List<Account> findByLastLoginIp(Object lastLoginIp,
			int... rowStartIdxAndCount) {
		return findByProperty(LAST_LOGIN_IP, lastLoginIp, rowStartIdxAndCount);
	}

	public List<Account> findByLoginCount(Object loginCount,
			int... rowStartIdxAndCount) {
		return findByProperty(LOGIN_COUNT, loginCount, rowStartIdxAndCount);
	}

	public List<Account> findByStatus(Object status, int... rowStartIdxAndCount) {
		return findByProperty(STATUS, status, rowStartIdxAndCount);
	}

	public List<Account> findByRemark(Object remark, int... rowStartIdxAndCount) {
		return findByProperty(REMARK, remark, rowStartIdxAndCount);
	}

	public List<Account> findByUpdater(Object updater,
			int... rowStartIdxAndCount) {
		return findByProperty(UPDATER, updater, rowStartIdxAndCount);
	}

	public List<Account> findByCreator(Object creator,
			int... rowStartIdxAndCount) {
		return findByProperty(CREATOR, creator, rowStartIdxAndCount);
	}

	public List<Account> findByRemoveTag(Object removeTag,
			int... rowStartIdxAndCount) {
		return findByProperty(REMOVE_TAG, removeTag, rowStartIdxAndCount);
	}

	public List<Account> findBySortId(Object sortId, int... rowStartIdxAndCount) {
		return findByProperty(SORT_ID, sortId, rowStartIdxAndCount);
	}

	public List<Account> findByPinyin(Object pinyin, int... rowStartIdxAndCount) {
		return findByProperty(PINYIN, pinyin, rowStartIdxAndCount);
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
	public List<Account> findAll(final int... rowStartIdxAndCount) {
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

}