/**
 * 
 */
package me.leep.wf.services.system.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.leep.wf.dao.system.aware.IAccountDAO;
import me.leep.wf.entity.system.Account;
import me.leep.wf.services.system.aware.IAccountService;

/**
 * @author lipeng
 *
 */
@Service("accountService")
public class AccountServiceImpl implements IAccountService {
	
	@Autowired
	IAccountDAO accountDao ;

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#save(me.leep.wf.entity.system.Account)
	 */
	@Override
	@Transactional
	public void save(Account entity) {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#delete(me.leep.wf.entity.system.Account)
	 */
	@Override
	@Transactional
	public void delete(Account entity) {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#update(me.leep.wf.entity.system.Account)
	 */
	@Override
	@Transactional
	public Account update(Account entity) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findById(java.lang.String)
	 */
	@Override
	public Account findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByProperty(java.lang.String, java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByName(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByName(Object name, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByPassword(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByPassword(Object password,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByPayPassword(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByPayPassword(Object payPassword,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByPwAnswer(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByPwAnswer(Object pwAnswer,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByPwQuestion(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByPwQuestion(Object pwQuestion,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByMemberId(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByMemberId(Object memberId,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByNickName(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByNickName(Object nickName,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByConfig(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByConfig(Object config, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByFavorite(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByFavorite(Object favorite,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByLastLoginIp(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByLastLoginIp(Object lastLoginIp,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByLoginCount(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByLoginCount(Object loginCount,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByStatus(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByStatus(Object status, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByRemark(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByRemark(Object remark, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByUpdater(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByUpdater(Object updater,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByCreator(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByCreator(Object creator,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByRemoveTag(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByRemoveTag(Object removeTag,
			int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findBySortId(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findBySortId(Object sortId, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findByPinyin(java.lang.Object, int[])
	 */
	@Override
	public List<Account> findByPinyin(Object pinyin, int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return accountDao.findByPinyin(pinyin, rowStartIdxAndCount);
	}

	/* (non-Javadoc)
	 * @see me.leep.wf.services.system.aware.IAccountService#findAll(int[])
	 */
	@Override
	public List<Account> findAll(int... rowStartIdxAndCount) {
		// TODO Auto-generated method stub
		return accountDao.findAll(rowStartIdxAndCount);
	}

	/**
	 * @return the accountDao
	 */
	public IAccountDAO getAccountDao() {
		return accountDao;
	}

	/**
	 * @param accountDao the accountDao to set
	 */
	public void setAccountDao(IAccountDAO accountDao) {
		this.accountDao = accountDao;
	}

}
