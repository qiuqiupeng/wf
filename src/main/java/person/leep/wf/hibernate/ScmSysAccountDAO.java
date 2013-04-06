package person.leep.wf.hibernate;

import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import static org.hibernate.criterion.Example.create;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * ScmSysAccount entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see person.leep.wf.hibernate.ScmSysAccount
 * @author MyEclipse Persistence Tools
 */

public class ScmSysAccountDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(ScmSysAccountDAO.class);
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

	public void save(ScmSysAccount transientInstance) {
		log.debug("saving ScmSysAccount instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ScmSysAccount persistentInstance) {
		log.debug("deleting ScmSysAccount instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ScmSysAccount findById(java.lang.String id) {
		log.debug("getting ScmSysAccount instance with id: " + id);
		try {
			ScmSysAccount instance = (ScmSysAccount) getSession().get(
					"person.leep.wf.hibernate.ScmSysAccount", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ScmSysAccount> findByExample(ScmSysAccount instance) {
		log.debug("finding ScmSysAccount instance by example");
		try {
			List<ScmSysAccount> results = (List<ScmSysAccount>) getSession()
					.createCriteria("person.leep.wf.hibernate.ScmSysAccount")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding ScmSysAccount instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from ScmSysAccount as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<ScmSysAccount> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List<ScmSysAccount> findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List<ScmSysAccount> findByPayPassword(Object payPassword) {
		return findByProperty(PAY_PASSWORD, payPassword);
	}

	public List<ScmSysAccount> findByPwAnswer(Object pwAnswer) {
		return findByProperty(PW_ANSWER, pwAnswer);
	}

	public List<ScmSysAccount> findByPwQuestion(Object pwQuestion) {
		return findByProperty(PW_QUESTION, pwQuestion);
	}

	public List<ScmSysAccount> findByMemberId(Object memberId) {
		return findByProperty(MEMBER_ID, memberId);
	}

	public List<ScmSysAccount> findByNickName(Object nickName) {
		return findByProperty(NICK_NAME, nickName);
	}

	public List<ScmSysAccount> findByConfig(Object config) {
		return findByProperty(CONFIG, config);
	}

	public List<ScmSysAccount> findByFavorite(Object favorite) {
		return findByProperty(FAVORITE, favorite);
	}

	public List<ScmSysAccount> findByLastLoginIp(Object lastLoginIp) {
		return findByProperty(LAST_LOGIN_IP, lastLoginIp);
	}

	public List<ScmSysAccount> findByLoginCount(Object loginCount) {
		return findByProperty(LOGIN_COUNT, loginCount);
	}

	public List<ScmSysAccount> findByStatus(Object status) {
		return findByProperty(STATUS, status);
	}

	public List<ScmSysAccount> findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List<ScmSysAccount> findByUpdater(Object updater) {
		return findByProperty(UPDATER, updater);
	}

	public List<ScmSysAccount> findByCreator(Object creator) {
		return findByProperty(CREATOR, creator);
	}

	public List<ScmSysAccount> findByRemoveTag(Object removeTag) {
		return findByProperty(REMOVE_TAG, removeTag);
	}

	public List<ScmSysAccount> findBySortId(Object sortId) {
		return findByProperty(SORT_ID, sortId);
	}

	public List<ScmSysAccount> findByPinyin(Object pinyin) {
		return findByProperty(PINYIN, pinyin);
	}

	public List findAll() {
		log.debug("finding all ScmSysAccount instances");
		try {
			String queryString = "from ScmSysAccount";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ScmSysAccount merge(ScmSysAccount detachedInstance) {
		log.debug("merging ScmSysAccount instance");
		try {
			ScmSysAccount result = (ScmSysAccount) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ScmSysAccount instance) {
		log.debug("attaching dirty ScmSysAccount instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ScmSysAccount instance) {
		log.debug("attaching clean ScmSysAccount instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}