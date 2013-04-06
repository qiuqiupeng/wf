package person.leep.wf.services;

import person.leep.wf.hibernate.ScmSysAccount;
import person.leep.wf.hibernate.ScmSysAccountDAO;

public interface InitLoginService {

	/**
	 * @return the scmSysAccountDAO
	 */
	public ScmSysAccountDAO getScmSysAccountDAO();

	/**
	 * @param scmSysAccountDAO the scmSysAccountDAO to set
	 */
	public void setScmSysAccountDAO(ScmSysAccountDAO scmSysAccountDAO);
	
	public ScmSysAccount check();

}
